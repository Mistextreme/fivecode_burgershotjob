-- Boss Menu Client Module
-- Handles boss menu interface and employee management UI

-- Register boss menu event
RegisterNetEvent(TriggerName("bossMenu"))
AddEventHandler(TriggerName("bossMenu"), function(menuData)
    local hasJobPermission = MainCheck(menuData.args.jobName)
    
    if hasJobPermission then
        local hasBossPermission = false
        local playerJobInfo = GetPlayerJobInfo()
        
        -- Check if player has boss permissions
        for _, allowedGrade in pairs(Config.Functions.BossMenu.grades) do
            if playerJobInfo.gradeName == allowedGrade and playerJobInfo.name == menuData.args.jobName then
                hasBossPermission = true
                break
            end
        end
        
        if not hasBossPermission then
            TriggerEvent(TriggerName("notify"), 
                _U("bossmenu_notify_title"), 
                _U("bossmenu_nottheboss"), 
                Config.NotifyType.error
            )
            return
        end
        
        -- Create main boss menu
        local bossMenu = {
            header = {
                name = "bossMenu",
                title = _U("bossmenu_title", menuData.args.labelName)
            },
            options = {
                {
                    title = _U("bossmenu_societyaccount"),
                    description = _U("bossmenu_societyaccount_desc"),
                    icon = "fas fa-briefcase",
                    arrow = true,
                    args = {args = menuData},
                    event = "bossMenu1",
                    onSelect = function()
                        ShowSocietyStatus(menuData.args)
                    end
                },
                {
                    title = _U("bossmenu_employees"),
                    description = _U("bossmenu_employees_desc"),
                    icon = "fas fa-users",
                    arrow = true,
                    args = {args = menuData},
                    event = "bossMenu2",
                    onSelect = function()
                        ShowSocietyManagement(menuData.args)
                    end
                }
            }
        }
        
        menu = bossMenu
        OpenMenu(menu)
    end
end)

-- Show society account status and money management
function ShowSocietyStatus(societyData)
    local societyName = Framework.type == "esx" and societyData.name or societyData.jobName
    
    CallCallback(TriggerName("GetSocietyMoney"), function(societyInfo)
        local isWithdrawDisabled = societyInfo.money < 1
        local withdrawArrow = not isWithdrawDisabled
        
        local societyStatusMenu = {
            header = {
                name = "societyStatusMenu",
                title = _U("bossmenu_society_status", societyData.labelName),
                backMenu = "bossMenu"
            },
            options = {
                {
                    title = _U("bossmenu_society_status_balance"),
                    description = _U("bossmenu_society_status_balance_desc", societyInfo.money, societyData.name),
                    icon = "fas fa-coins"
                },
                {
                    title = _U("bossmenu_society_status_deposit"),
                    description = _U("bossmenu_society_status_deposit_desc"),
                    icon = "fas fa-plus",
                    arrow = true,
                    args = {
                        args = societyData,
                        type = _U("bossmenu_society_deposit"),
                        label = societyData.label:lower(),
                        money = societyInfo.money,
                        icon = "plus"
                    },
                    event = "societyStatusMenu1",
                    onSelect = function()
                        HandleSocietyTransaction(societyData, _U("bossmenu_society_deposit"), 
                            societyData.label:lower(), societyInfo.money, "plus")
                    end
                },
                {
                    title = _U("bossmenu_society_status_withdraw"),
                    description = _U("bossmenu_society_status_withdraw_desc"),
                    icon = "fas fa-minus",
                    disabled = isWithdrawDisabled,
                    arrow = withdrawArrow,
                    args = {
                        args = societyData,
                        type = _U("bossmenu_society_withdraw"),
                        label = societyData.label:lower(),
                        money = societyInfo.money,
                        icon = "minus"
                    },
                    event = "societyStatusMenu1",
                    onSelect = function()
                        HandleSocietyTransaction(societyData, _U("bossmenu_society_withdraw"), 
                            societyData.label:lower(), societyInfo.money, "minus")
                    end
                }
            }
        }
        
        -- Add money washing option if enabled
        if societyData.washMoney then
            table.insert(societyStatusMenu.options, {
                title = _U("bossmenu_society_status_wash"),
                description = _U("bossmenu_society_status_wash_desc"),
                icon = "fas fa-sack-dollar",
                arrow = true,
                args = {
                    args = societyData,
                    type = _U("bossmenu_society_wash"),
                    label = societyData.label:lower(),
                    money = societyInfo.money,
                    icon = "sack-dollar"
                },
                event = "societyStatusMenu1",
                onSelect = function()
                    HandleSocietyTransaction(societyData, _U("bossmenu_society_wash"), 
                        societyData.label:lower(), societyInfo.money, "sack-dollar")
                end
            })
        end
        
        menu = societyStatusMenu
        OpenMenu(menu)
    end, societyName)
end

-- Handle society money transactions (deposit, withdraw, wash)
function HandleSocietyTransaction(societyData, transactionType, societyLabel, societyMoney, iconType)
    local inputType = transactionType == _U("bossmenu_society_wash") and false or "input"
    
    local dialogResult = OpenDialogMenu({
        type = "society",
        label = _U("bossmenu_society_label", transactionType),
        info = {
            type = transactionType,
            societyName = societyLabel,
            args = societyData
        },
        menu = {
            {
                type = inputType,
                label = _U("bossmenu_society_status_balance"),
                placeholder = "$" .. societyMoney,
                disabled = true
            },
            {
                type = "number",
                label = _U("bossmenu_society_amount"),
                icon = iconType
            }
        }
    })
    
    if DialogMenu == "esx" then
        return
    end
    
    -- Handle QB dialog menu response
    if dialogResult and DialogMenu == "qb" then
        transactionType = dialogResult.menu.info.type
        societyLabel = dialogResult.menu.info.societyName
        societyData = dialogResult.menu.info.args
    end
    
    if not dialogResult or (not dialogResult.value1 and not dialogResult.value2) then
        ShowSocietyStatus(societyData)
        return
    end
    
    local transactionAmount = tonumber(dialogResult.value1) or tonumber(dialogResult.value2)
    
    if transactionAmount <= 0 then
        TriggerEvent(TriggerName("notify"), false, _U("amount_not_number"), Config.NotifyType.error)
        return
    end
    
    if Config.DialogMenu ~= "qb" then
        ProcessSocietyTransaction(transactionType, societyLabel, transactionAmount)
        if BossMenuSociety ~= "qb-management" and BossMenuSociety ~= "qb-banking" then
            ShowSocietyStatus(societyData)
        end
    end
end

-- Show society management menu
function ShowSocietyManagement(societyData)
    local managementMenu = {
        header = {
            name = "societyManage",
            title = _U("bossmenu_society_manage_title", societyData.labelName),
            backMenu = "bossMenu"
        },
        options = {
            {
                title = _U("bossmenu_society_manage"),
                description = _U("bossmenu_society_manage_desc"),
                icon = "fas fa-users",
                arrow = true,
                args = {args = societyData},
                event = "societyManage1",
                onSelect = function()
                    ShowEmployeeManagement(societyData)
                end
            },
            {
                title = _U("bossmenu_society_hire"),
                description = _U("bossmenu_society_hire_desc"),
                icon = "fas fa-paper-plane",
                arrow = true,
                args = {args = societyData},
                event = "societyManage2",
                onSelect = function()
                    ShowHireEmployees(societyData)
                end
            }
        }
    }
    
    menu = managementMenu
    OpenMenu(menu)
end

-- Show employee management interface
function ShowEmployeeManagement(societyData)
    CallCallback(TriggerName("getSocietyEmployees"), function(employeeList)
        local employeeMenu = {
            header = {
                name = "societyEmployees",
                title = _U("bossmenu_society_manage_employees_title", societyData.labelName),
                backMenu = "societyManage"
            },
            options = {}
        }
        
        for _, employee in pairs(employeeList) do
            local currentPlayerIdentifier = GetIdentifier()
            local isCurrentPlayer = currentPlayerIdentifier == employee.identifier
            
            local employeeTitle = isCurrentPlayer and 
                _U("bossmenu_society_manage_employees_you", employee.name) or employee.name
            local isDisabled = isCurrentPlayer
            local hasArrow = not isCurrentPlayer
            
            table.insert(employeeMenu.options, {
                title = employeeTitle,
                description = _U("bossmenu_society_manage_employees_desc", 
                    employee.name, employee.job.grade_label, employee.job.grade),
                icon = "fas fa-user",
                arrow = hasArrow,
                disabled = isDisabled,
                args = {
                    args = societyData,
                    v = employee
                },
                event = "societyEmployees1",
                onSelect = function()
                    ShowEmployeeOptions(societyData, employee)
                end
            })
        end
        
        OpenMenu(employeeMenu)
    end, societyData.label:lower())
end

-- Show individual employee management options
function ShowEmployeeOptions(societyData, employeeData)
    local employeeOptionsMenu = {
        header = {
            name = "societyEmployeesOptions",
            title = _U("bossmenu_society_employee_options_title", societyData.labelName, employeeData.name),
            backMenu = "societyEmployees"
        },
        options = {
            {
                title = _U("bossmenu_society_employee_options_promote"),
                description = _U("bossmenu_society_employee_options_promote_desc"),
                icon = "fas fa-star",
                arrow = true,
                args = {
                    args = societyData,
                    employeeInfo = employeeData
                },
                event = "societyEmployeesOptions1",
                onSelect = function()
                    PromoteEmployee(societyData, employeeData)
                end
            },
            {
                title = _U("bossmenu_society_employee_options_demote"),
                description = _U("bossmenu_society_employee_options_demote_desc"),
                icon = "fas fa-star",
                arrow = true,
                args = {
                    args = societyData,
                    employeeInfo = employeeData
                },
                event = "societyEmployeesOptions2",
                onSelect = function()
                    DemoteEmployee(societyData, employeeData)
                end
            },
            {
                title = _U("bossmenu_society_employee_options_fire"),
                description = _U("bossmenu_society_employee_options_fire_desc"),
                icon = "fas fa-user-minus",
                arrow = true,
                args = {
                    args = societyData,
                    employeeInfo = employeeData
                },
                event = "societyEmployeesOptions3",
                onSelect = function()
                    FireEmployee(societyData, employeeData)
                end
            }
        }
    }
    
    menu = employeeOptionsMenu
    OpenMenu(menu)
end

-- Promote employee function
function PromoteEmployee(societyData, employeeData)
    if employeeData.job.grade >= Config.Functions.BossMenu.manage.maxGrade then
        ShowSocietyManagement(societyData)
        TriggerEvent(TriggerName("notify"), 
            _U("bossmenu_notify_title"), 
            _U("bossmenu_society_cannot_promote"), 
            Config.NotifyType.error)
        return
    end
    
    TriggerServerEvent(TriggerName("SocietySetJob"), 
        employeeData.identifier, employeeData.name, employeeData.job.name, 
        societyData.jobName, employeeData.job.grade + 1, employeeData.job.grade_label, "promote")
    ShowSocietyManagement(societyData)
end

-- Demote employee function
function DemoteEmployee(societyData, employeeData)
    if employeeData.job.grade < 1 then
        ShowSocietyManagement(societyData)
        TriggerEvent(TriggerName("notify"), 
            _U("bossmenu_notify_title"), 
            _U("bossmenu_society_cannot_demote"), 
            Config.NotifyType.error)
        return
    end
    
    TriggerServerEvent(TriggerName("SocietySetJob"), 
        employeeData.identifier, employeeData.name, employeeData.job.name, 
        societyData.jobName, employeeData.job.grade - 1, employeeData.job.grade_label, "demote")
    ShowSocietyManagement(societyData)
end

-- Fire employee function
function FireEmployee(societyData, employeeData)
    TriggerServerEvent(TriggerName("SocietySetJob"), 
        employeeData.identifier, employeeData.name, 
        Config.Functions.BossMenu.manage.job, societyData.jobName, 
        Config.Functions.BossMenu.manage.grade, employeeData.job.grade_label, "fire")
    ShowSocietyManagement(societyData)
end

-- Show hire employees interface
function ShowHireEmployees(societyData)
    CallCallback(TriggerName("getOnlinePlayers"), function(onlinePlayers)
        local closestPlayer, distance = GetClosestPlayer()
        local hasNearbyPlayers = false
        
        local hireMenu = {
            header = {
                name = "societyHireEmployees",
                title = _U("bossmenu_society_hire_employees_title", societyData.labelName),
                backMenu = "societyManage"
            },
            options = {}
        }
        
        if closestPlayer ~= -1 and distance <= societyData.hireDistance then
            for i = 1, #onlinePlayers do
                local player = onlinePlayers[i]
                if player.job.name ~= societyData.jobName then
                    hasNearbyPlayers = true
                    table.insert(hireMenu.options, {
                        title = player.name,
                        description = _U("bossmenu_society_hire_employees_desc", player.name),
                        icon = "fas fa-user",
                        arrow = true,
                        args = {
                            args = societyData,
                            players = player
                        },
                        event = "societyHireEmployees1",
                        onSelect = function()
                            TriggerServerEvent(TriggerName("SocietySetJob"), 
                                player.identifier, player.name, societyData.jobName, societyData.jobName, 
                                Config.Functions.BossMenu.manage.grade, 
                                Config.Functions.BossMenu.manage.jobLabel, "hire")
                        end
                    })
                end
            end
        end
        
        if not hasNearbyPlayers then
            table.insert(hireMenu.options, {
                title = _U("bossmenu_society_hire_employees_nobodynear"),
                icon = "fas fa-ban"
            })
        end
        
        OpenMenu(hireMenu)
    end)
end

-- Register all menu event handlers
RegisterNetEvent(TriggerName("bossMenu1"))
AddEventHandler(TriggerName("bossMenu1"), function(data)
    ShowSocietyStatus(data.args.args)
end)

RegisterNetEvent(TriggerName("bossMenu2"))
AddEventHandler(TriggerName("bossMenu2"), function(data)
    ShowSocietyManagement(data.args)
end)

RegisterNetEvent(TriggerName("societyStatusMenu1"))
AddEventHandler(TriggerName("societyStatusMenu1"), function(data)
    HandleSocietyTransaction(data.args, data.type, data.label, data.money, data.icon)
end)

RegisterNetEvent(TriggerName("societyManage1"))
AddEventHandler(TriggerName("societyManage1"), function(data)
    ShowEmployeeManagement(data.args)
end)

RegisterNetEvent(TriggerName("societyManage2"))
AddEventHandler(TriggerName("societyManage2"), function(data)
    ShowHireEmployees(data.args)
end)

RegisterNetEvent(TriggerName("societyEmployees1"))
AddEventHandler(TriggerName("societyEmployees1"), function(data)
    ShowEmployeeOptions(data.args, data.v)
end)

RegisterNetEvent(TriggerName("societyEmployeesOptions1"))
AddEventHandler(TriggerName("societyEmployeesOptions1"), function(data)
    PromoteEmployee(data.args, data.employeeInfo)
end)

RegisterNetEvent(TriggerName("societyEmployeesOptions2"))
AddEventHandler(TriggerName("societyEmployeesOptions2"), function(data)
    DemoteEmployee(data.args, data.employeeInfo)
end)

RegisterNetEvent(TriggerName("societyEmployeesOptions3"))
AddEventHandler(TriggerName("societyEmployeesOptions3"), function(data)
    FireEmployee(data.args, data.employeeInfo)
end)

RegisterNetEvent(TriggerName("societyHireEmployees1"))
AddEventHandler(TriggerName("societyHireEmployees1"), function(data)
    local player = data.players
    TriggerServerEvent(TriggerName("SocietySetJob"), 
        player.identifier, player.name, data.args.jobName, data.args.jobName, 
        Config.Functions.BossMenu.manage.grade, 
        Config.Functions.BossMenu.manage.jobLabel, "hire")
end)