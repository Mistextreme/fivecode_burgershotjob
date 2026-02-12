-- Main Server Logic for FiveM Burger Shot Job
-- Handles server-side operations, player management, and utility functions

-- Global state management
Busy = {}                    -- Track busy players
PlayerOccupied = {}          -- Track occupied stations by players
PlayersDoingMission = {}     -- Track players currently on missions
Utils = {}                   -- Utility station status tracking
SpawnedObjects = {}          -- Track spawned objects

-- Register stash opening event
RegisterNetEvent(TriggerName("openStash"))
AddEventHandler(TriggerName("openStash"), function(stashId, stashLabel, slots, weight, items, deleteOnStop)
    CreateOpenStash(source, stashId, stashLabel, slots, weight, items, deleteOnStop)
end)

-- Utility status checking callback
RegisterCallback(TriggerName("checkUtils"), function(playerId, callback, requestData)
    local playerIdentifier = GetIdentifier(playerId)
    local utilityId = requestData.id
    
    -- Check if player is busy
    if Busy[playerIdentifier] then
        callback(false)
        TriggerClientEvent(
            TriggerName("notify"),
            playerId,
            false,
            _U("busy"),
            Config.NotifyType.error
        )
        return
    end
    
    -- Initialize utility if it doesn't exist
    if not Utils[utilityId] then
        Utils[utilityId] = {
            occupied = false
        }
    end
    
    local requestType = requestData.info
    
    if requestType == "checkStatus" then
        -- Return current occupation status
        callback(Utils[utilityId].occupied)
        
    elseif requestType == "changeStatus" then
        -- Update player occupation tracking
        local newStatus = requestData.status
        PlayerOccupied[playerIdentifier] = newStatus and {id = utilityId} or {}
        
        -- Update utility occupation status
        Utils[utilityId].occupied = newStatus
    end
end)

-- Handle player disconnection cleanup
AddEventHandler("playerDropped", function(reason)
    local playerIdentifier = GetIdentifier(source)
    
    -- Clean up occupied stations when player leaves
    local occupiedStation = PlayerOccupied[playerIdentifier]
    if occupiedStation then
        for utilityId, utilityData in pairs(Utils) do
            if utilityId == occupiedStation.id then
                utilityData.occupied = false
                break
            end
        end
    end
    
    -- Clean up mission tracking when player leaves
    local playerMission = PlayersDoingMission[playerIdentifier]
    if playerMission then
        for missionId, missionData in pairs(Missions) do
            if missionId == playerMission.id then
                PlayersDoingMission[playerIdentifier] = {}
                missionData.occupied = missionData.occupied - 1
                break
            end
        end
    end
end)

-- Handle resource stop cleanup
AddEventHandler("onResourceStop", function(resourceName)
    local currentResourceName = GetCurrentResourceName()
    if currentResourceName ~= resourceName then
        return
    end
    
    -- Clean up trash stashes when resource stops
    for trashId, trashStash in pairs(Trash) do
        if trashStash then
            DeleteStash(trashStash)
        end
    end
end)

-- Get player Discord identifier
-- @param playerId: The player's server ID
-- @return: Discord identifier without the "discord:" prefix
function GetPlayerDiscord(playerId)
    local playerIdentifiers = GetPlayerIdentifiers(playerId)
    
    for _, identifier in pairs(playerIdentifiers) do
        local identifierPrefix = string.sub(identifier, 1, string.len("discord:"))
        if identifierPrefix == "discord:" then
            return identifier:gsub("discord:", "")
        end
    end
end

-- Compare items in a list to find specific item
-- @param targetItem: Item name to search for
-- @param itemList: List of items to search through
-- @return: Item data if found, false otherwise
function CompareItemsSec(targetItem, itemList)
    local foundItem = false
    
    for _, itemData in pairs(itemList) do
        if itemData.item == targetItem then
            foundItem = itemData
            break
        end
    end
    
    return foundItem
end

-- Load special objects for client
-- @param playerId: Target player ID to load objects for
function LoadSpecialObjects(playerId)
    TriggerClientEvent(TriggerName("spawnSpecialObjects"), playerId)
end