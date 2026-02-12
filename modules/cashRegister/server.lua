-- Cash Register Server Module
-- Handles cash register transactions and payment processing

-- Track active cash registers and their amounts
local activeCashRegisters = {}

-- Register cash register event
RegisterNetEvent(TriggerName("cashRegister"))
AddEventHandler(TriggerName("cashRegister"), function(transactionData)
    local playerId = source
    local registerId = transactionData.id
    local transactionStatus = transactionData.status
    local transactionAmount = transactionData.amount
    local paymentType = transactionData.payType
    
    local playerMoney = GetMoney(playerId, paymentType)
    
    if transactionStatus == "enter" then
        -- Employee setting amount in cash register
        if not activeCashRegisters[registerId] then
            activeCashRegisters[registerId] = transactionAmount
        end
        
    elseif transactionStatus == "clear" then
        -- Clear cash register amount
        activeCashRegisters[registerId] = nil
        
    elseif transactionStatus == "pay" then
        -- Process customer payment
        local registerAmount = activeCashRegisters[registerId]
        
        if registerAmount then
            -- Check if player has enough money
            if playerMoney <= transactionAmount then
                TriggerClientEvent(TriggerName("notify"), playerId, false, 
                    _U("not_enough_money", transactionAmount - playerMoney), 
                    Config.NotifyType.error)
                return
            end
            
            -- Process payment
            RemoveMoney(playerId, paymentType, transactionAmount)
            
            -- Add money to society account
            local societyName = JobInfo.society.name:lower()
            AddMoneyToSociety(societyName, transactionAmount)
            
            -- Notify employees about the payment
            NotifyEmployeesAboutPayment(registerId, transactionAmount)
            
            -- Log transaction to Discord
            DiscordLogs(playerId, {
                societyName = societyName,
                amount = transactionAmount
            }, "cashRegister")
            
            -- Notify customer of successful payment
            TriggerClientEvent(TriggerName("notify"), playerId, false, 
                _U("cashregister_paid", transactionAmount), 
                Config.NotifyType.success)
            
            -- Play cash register sound
            TriggerClientEvent(TriggerName("playCustomSound"), playerId, 
                "cash-register-purchase", 1250, Config.CustomSoundsVolume.cash_register)
            
            -- Clear the register after payment
            activeCashRegisters[registerId] = nil
        end
    end
end)

-- Check cash register status callback
RegisterCallback(TriggerName("checkRegister"), function(playerId, callback, registerId)
    local playerMoney = {
        cash = GetMoney(playerId, "cash"),
        bank = GetMoney(playerId, "bank")
    }
    
    local registerAmount = activeCashRegisters[registerId]
    callback(registerAmount, playerMoney)
end)

-- Notify all employees about a payment
function NotifyEmployeesAboutPayment(registerId, amountPaid)
    local allPlayers = GetPlayers()
    
    for _, playerId in pairs(allPlayers) do
        local playerJob = GetPlayerJobInfo(playerId).name
        
        if playerJob == JobInfo.name then
            TriggerClientEvent(TriggerName("sendEmployeeNotif"), playerId, {
                cashRegisterId = registerId,
                amountPaid = amountPaid
            })
        end
    end
end