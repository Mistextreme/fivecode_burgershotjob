-- Cash Register Client Module
-- Handles cash register interactions and payment processing

-- Register cash register menu event
RegisterNetEvent(TriggerName("useCashRegisterMenu"))
AddEventHandler(TriggerName("useCashRegisterMenu"), function(registerData)
    if Busy then
        TriggerEvent(TriggerName("notify"), false, _U("busy"), Config.NotifyType.error)
        return
    end
    
    CallCallback(TriggerName("checkRegister"), function(hasAmount, playerMoney)
        if not hasAmount then
            -- Employee setting price
            local playerJob = GetPlayerInfo().job.name
            if playerJob ~= registerData.args.job then
                TriggerEvent(TriggerName("notify"), false, 
                    _U("cashregister_wait_for_employee"), Config.NotifyType.error)
                return
            end
            
            -- Show amount input dialog for employee
            local amountDialog = OpenDialogMenu({
                type = "cashRegister",
                label = _U("cashregister_title", registerData.args.id),
                id = registerData.args.id,
                menu = {
                    {
                        type = "number",
                        label = _U("cashregister_amount_to_pay"),
                        icon = "fas fa-dollar-sign",
                        required = true
                    }
                }
            })
            
            if DialogMenu == "esx" then
                return
            end
            
            if not amountDialog or not amountDialog.value1 then
                return
            end
            
            local paymentAmount = tonumber(amountDialog.value1)
            if paymentAmount <= 0 then
                TriggerEvent(TriggerName("notify"), false, 
                    _U("amount_too_low"), Config.NotifyType.error)
                return
            end
            
            -- Set the amount in cash register
            TriggerServerEvent(TriggerName("cashRegister"), {
                status = "enter",
                amount = paymentAmount,
                id = registerData.args.id
            })
            
        else
            -- Customer or employee viewing payment options
            local playerJob = GetPlayerInfo().job.name
            
            if playerJob == registerData.args.job then
                -- Employee view - show clear option
                local employeeMenu = {
                    header = {
                        name = "useCashRegisterMenu",
                        title = _U("cashregister_title", registerData.args.id)
                    },
                    options = {
                        {
                            title = _U("cashregister_pay_amount") .. hasAmount,
                            disabled = true,
                            args = {
                                status = "clear",
                                id = registerData.args.id
                            },
                            event = "useCashRegisterMenu1",
                            onSelect = function()
                                TriggerServerEvent(TriggerName("cashRegister"), {
                                    status = "clear",
                                    id = registerData.args.id
                                })
                            end
                        },
                        {
                            title = _U("cashregister_pay_clear"),
                            icon = "fas fa-ban",
                            arrow = true,
                            args = {
                                status = "clear",
                                id = registerData.args.id
                            },
                            event = "useCashRegisterMenu1",
                            onSelect = function()
                                TriggerServerEvent(TriggerName("cashRegister"), {
                                    status = "clear",
                                    id = registerData.args.id
                                })
                            end
                        }
                    }
                }
                
                menu = employeeMenu
                OpenMenu(menu)
                
            else
                -- Customer view - show payment options
                if Config.UI.cashRegister then
                    -- Use custom UI
                    SetNuiFocus(true, true)
                    SendNUIMessage({
                        type = "showUI",
                        text = _U("cashregister_pay_amount"),
                        amount = hasAmount,
                        id = registerData.args.id
                    })
                else
                    -- Use menu system
                    local customerMenu = {
                        header = {
                            name = "useCashRegisterMenu",
                            title = _U("cashregister_title", registerData.args.id)
                        },
                        options = {
                            {
                                title = _U("cashregister_pay_bank", hasAmount),
                                description = _U("cashregister_pay_balance", playerMoney.bank),
                                icon = "fas fa-building-columns",
                                arrow = true,
                                args = {
                                    status = "pay",
                                    payType = "bank",
                                    amount = hasAmount,
                                    id = registerData.args.id
                                },
                                event = "useCashRegisterMenu1",
                                onSelect = function()
                                    TriggerServerEvent(TriggerName("cashRegister"), {
                                        status = "pay",
                                        payType = "bank",
                                        amount = hasAmount,
                                        id = registerData.args.id
                                    })
                                end
                            },
                            {
                                title = _U("cashregister_pay_cash", hasAmount),
                                description = _U("cashregister_pay_balance", playerMoney.cash),
                                icon = "fas fa-money-bill",
                                arrow = true,
                                args = {
                                    status = "pay",
                                    payType = "cash",
                                    amount = hasAmount,
                                    id = registerData.args.id
                                },
                                event = "useCashRegisterMenu1",
                                onSelect = function()
                                    TriggerServerEvent(TriggerName("cashRegister"), {
                                        status = "pay",
                                        payType = "cash",
                                        amount = hasAmount,
                                        id = registerData.args.id
                                    })
                                end
                            }
                        }
                    }
                    
                    menu = customerMenu
                    OpenMenu(menu)
                end
            end
        end
    end, registerData.args.id)
end)

-- Handle NUI payment processing
RegisterNUICallback("processPayment", function(paymentData, callback)
    local paymentMethod = paymentData.method
    local paymentAmount = paymentData.amount
    local registerId = paymentData.id
    local orderArgs = paymentData.args
    
    callback("ok")
    SetNuiFocus(false, false)
    
    if orderArgs then
        -- Handle NPC employee order payment
        orderArgs.type = paymentMethod
        CallCallback(TriggerName("orderFoodPay"), function(paymentSuccess)
            if paymentSuccess then
                NpcEmployeeAnimation(orderArgs)
            end
        end, orderArgs)
    else
        -- Handle regular cash register payment
        TriggerServerEvent(TriggerName("cashRegister"), {
            status = "pay",
            payType = paymentMethod,
            amount = paymentAmount,
            id = registerId
        })
    end
end)

-- Close payment UI command
RegisterCommand("closepayment", function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "hideUI"
    })
end, false)

-- Custom billing event
RegisterNetEvent(TriggerName("customBilling"))
AddEventHandler(TriggerName("customBilling"), function()
    CustomBilling()
end)

-- Cash register menu event handler
RegisterNetEvent(TriggerName("useCashRegisterMenu1"))
AddEventHandler(TriggerName("useCashRegisterMenu1"), function(actionData)
    local actionStatus = actionData.status
    local paymentType = actionData.payType
    local paymentAmount = actionData.amount
    local registerId = actionData.id
    
    TriggerServerEvent(TriggerName("cashRegister"), {
        status = actionStatus,
        payType = paymentType,
        amount = paymentAmount,
        id = registerId
    })
end)