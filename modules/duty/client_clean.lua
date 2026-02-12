-- Duty Client Module
-- Handles employee duty system (clock in/out)

-- Register duty menu event
RegisterNetEvent(TriggerName("dutyMenu"))
AddEventHandler(TriggerName("dutyMenu"), function(dutyData)
    local hasJobPermission = MainCheck(dutyData.args.jobName)
    
    if hasJobPermission then
        CallCallback(TriggerName("checkDuty"), function(currentDutyStatus)
            local dutyMenu = {
                header = {
                    name = "dutyMenu",
                    title = _U("duty_menu_title", dutyData.args.labelName)
                },
                options = {}
            }
            
            menu = dutyMenu
            
            if not currentDutyStatus then
                -- Player is off duty - show sign in option
                table.insert(menu.options, {
                    title = _U("duty_menu_sign_in"),
                    description = _U("duty_menu_sign_in_desc"),
                    icon = "fas fa-sign-in-alt",
                    arrow = true,
                    args = {
                        onDuty = currentDutyStatus
                    },
                    event = "dutyMenu1",
                    onSelect = function()
                        Busy = true
                        PlayDutyAnimation(_U("duty_progressbar_sign_in"), currentDutyStatus)
                        TriggerServerEvent(TriggerName("dutySystem"), currentDutyStatus)
                        Busy = false
                    end
                })
            else
                -- Player is on duty - show sign out option
                table.insert(menu.options, {
                    title = _U("duty_menu_sign_out"),
                    description = _U("duty_menu_sign_out_desc"),
                    icon = "fas fa-sign-out-alt",
                    arrow = true,
                    args = {
                        onDuty = currentDutyStatus
                    },
                    event = "dutyMenu2",
                    onSelect = function()
                        Busy = true
                        PlayDutyAnimation(_U("duty_progressbar_sign_out"), currentDutyStatus)
                        TriggerServerEvent(TriggerName("dutySystem"), currentDutyStatus)
                        Busy = false
                    end
                })
            end
            
            OpenMenu(menu)
        end)
    end
end)

-- Play duty change animation
function PlayDutyAnimation(progressText, currentDutyStatus)
    local playerPed = PlayerPedId()
    
    -- Freeze player during animation
    FreezeEntityPosition(playerPed, true)
    
    -- Spawn clipboard prop
    SpawnProp("prop_fib_clipboard", 18905, 0.19, 0.06, 0.02, -121.0, 0.0, 0.0)
    
    -- Spawn pen after delay
    SetTimeout(2250, function()
        SpawnProp("bkr_prop_fakeid_penclipboard", 58866, 0.1, -0.02, 0.001, 80.0, -50.0, 0.0)
    end)
    
    -- Play signing animation
    Request("anim", "amb@medic@standing@timeofdeath@enter")
    TaskPlayAnim(playerPed, "amb@medic@standing@timeofdeath@enter", "enter", 
        1.5, -1.0, 8500, 51, 1, false, false, false)
    
    -- Show progress bar
    ProgressBars(progressText, 8500)
    
    -- Trigger duty change callback
    PlayerDuty(currentDutyStatus)
    
    -- Clean up
    ClearProps()
    FreezeEntityPosition(playerPed, false)
end

-- Register duty menu event handlers
RegisterNetEvent(TriggerName("dutyMenu1"))
AddEventHandler(TriggerName("dutyMenu1"), function(dutyData)
    local currentDutyStatus = dutyData.onDuty
    
    Busy = true
    PlayDutyAnimation(_U("duty_progressbar_sign_in"), currentDutyStatus)
    TriggerServerEvent(TriggerName("dutySystem"), currentDutyStatus)
    Busy = false
end)

RegisterNetEvent(TriggerName("dutyMenu2"))
AddEventHandler(TriggerName("dutyMenu2"), function(dutyData)
    local currentDutyStatus = dutyData.onDuty
    
    Busy = true
    PlayDutyAnimation(_U("duty_progressbar_sign_out"), currentDutyStatus)
    TriggerServerEvent(TriggerName("dutySystem"), currentDutyStatus)
    Busy = false
end)