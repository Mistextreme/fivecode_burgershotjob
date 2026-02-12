-- Boss Menu Server Module
-- Handles employee management, hiring, firing, promoting, and demoting

-- Register society job management event
RegisterServerEvent(TriggerName("SocietySetJob"))
AddEventHandler(TriggerName("SocietySetJob"), function(targetIdentifier, targetName, newJob, newJobLabel, newGrade, actionType)
    local bossPlayer = GetPlayer(source)
    local bossJobInfo = GetPlayerJobInfo(source)
    local targetPlayer = GetPlayerFromIdentifier(targetIdentifier)
    local hasPermission = false
    
    -- Check if boss has permission to manage employees
    for _, allowedGrade in pairs(Config.Functions.BossMenu.grades) do
        if bossJobInfo.gradeName == allowedGrade and bossJobInfo.name == newJobLabel then
            hasPermission = true
            break
        end
    end
    
    if not hasPermission then
        return
    end
    
    -- Handle offline player job changes
    if not targetPlayer then
        if Framework.type == "esx" then
            MySQL.update("UPDATE users SET job = ?, job_grade = ? WHERE identifier = ?", {
                newJob, newGrade, targetIdentifier
            }, function() end)
        else
            local offlinePlayer = CORE.Functions.GetOfflinePlayerByCitizenId(targetIdentifier)
            targetPlayer = offlinePlayer
            targetPlayer.Functions.SetJob(newJob, newGrade)
            targetPlayer.Functions.Save()
        end
        
        -- Send notification to boss for offline player actions
        local notificationKey = ""
        if actionType == "promote" then
            notificationKey = "bossmenu_society_action_promote"
        elseif actionType == "demote" then
            notificationKey = "bossmenu_society_action_demote"
        elseif actionType == "fire" then
            notificationKey = "bossmenu_society_action_fired"
        end
        
        TriggerClientEvent(TriggerName("notify"), bossPlayer.source, 
            _U("bossmenu_notify_title"), 
            _U(notificationKey, targetName), 
            Config.NotifyType.info
        )
        return
    end
    
    -- Handle online player job changes
    SetJob(targetPlayer, newJob, newGrade)
    
    if Framework.type == "qbcore" then
        targetPlayer.Functions.Save()
        targetPlayer = targetPlayer.PlayerData
    end
    
    -- Send notifications based on action type
    if actionType == "hire" then
        -- Notify boss
        TriggerClientEvent(TriggerName("notify"), bossPlayer.source,
            _U("bossmenu_notify_title"),
            _U("bossmenu_society_action_hired", targetName),
            Config.NotifyType.info
        )
        -- Notify hired player
        TriggerClientEvent(TriggerName("notify"), targetPlayer.source,
            _U("bossmenu_notify_title_jobcenter"),
            _U("bossmenu_society_action_hired_effected_player", newJobLabel),
            Config.NotifyType.info
        )
        
    elseif actionType == "promote" then
        -- Notify boss
        TriggerClientEvent(TriggerName("notify"), bossPlayer.source,
            _U("bossmenu_notify_title"),
            _U("bossmenu_society_action_promote", targetName),
            Config.NotifyType.info
        )
        -- Notify promoted player
        TriggerClientEvent(TriggerName("notify"), targetPlayer.source,
            _U("bossmenu_notify_title_jobcenter"),
            _U("bossmenu_society_action_promote_effected_player", newJobLabel, newJobLabel, newGrade),
            Config.NotifyType.info
        )
        
    elseif actionType == "demote" then
        -- Notify boss
        TriggerClientEvent(TriggerName("notify"), bossPlayer.source,
            _U("bossmenu_notify_title"),
            _U("bossmenu_society_action_demote", targetName),
            Config.NotifyType.info
        )
        -- Notify demoted player
        TriggerClientEvent(TriggerName("notify"), targetPlayer.source,
            _U("bossmenu_notify_title_jobcenter"),
            _U("bossmenu_society_action_demote_effected_player", newJobLabel, newJobLabel, newGrade),
            Config.NotifyType.info
        )
        
    elseif actionType == "fire" then
        -- Notify boss
        TriggerClientEvent(TriggerName("notify"), bossPlayer.source,
            _U("bossmenu_notify_title"),
            _U("bossmenu_society_action_fired", targetName),
            Config.NotifyType.info
        )
        -- Notify fired player
        TriggerClientEvent(TriggerName("notify"), targetPlayer.source,
            _U("bossmenu_notify_title_jobcenter"),
            _U("bossmenu_society_action_fired_effected_player", newJobLabel),
            Config.NotifyType.info
        )
    end
end)

-- Get online players callback
RegisterCallback(TriggerName("getOnlinePlayers"), function(playerId, callback)
    local allPlayers = GetPlayers()
    local playerList = {}
    
    for i = 1, #allPlayers do
        local playerData = GetPlayer(allPlayers[i])
        
        if playerData then
            if Framework.type == "esx" then
                table.insert(playerList, {
                    source = playerData.source,
                    identifier = playerData.identifier,
                    name = playerData.variables.firstName .. " " .. playerData.variables.lastName,
                    job = playerData.job
                })
            elseif Framework.type == "qbcore" then
                playerData = playerData.PlayerData
                table.insert(playerList, {
                    source = playerData.source,
                    identifier = playerData.citizenid,
                    name = playerData.charinfo.firstname .. " " .. playerData.charinfo.lastname,
                    job = playerData.job
                })
            end
        end
    end
    
    callback(playerList)
end)