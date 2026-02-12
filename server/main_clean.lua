-- Burger Shot Job - Main Server Logic
-- Handles server-side operations, player management, and utility functions

-- Global state management tables
local busyPlayers = {}                    -- Track players currently busy with activities
local playerOccupiedStations = {}         -- Track which stations are occupied by which players
local playersOnMissions = {}              -- Track players currently doing cleaning missions
local utilityStationStatus = {}           -- Track status of utility stations (occupied/free)
local spawnedObjects = {}                 -- Track spawned objects for cleanup

-- Register stash opening event handler
RegisterNetEvent(TriggerName("openStash"))
AddEventHandler(TriggerName("openStash"), function(stashId, stashLabel, slots, weight, items, deleteOnStop)
    CreateOpenStash(source, stashId, stashLabel, slots, weight, items, deleteOnStop)
end)

-- Utility station status management callback
RegisterCallback(TriggerName("checkUtils"), function(playerId, callback, requestData)
    local playerIdentifier = GetIdentifier(playerId)
    local utilityId = requestData.id
    
    -- Check if player is currently busy with another activity
    if busyPlayers[playerIdentifier] then
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
    
    -- Initialize utility station if it doesn't exist
    if not utilityStationStatus[utilityId] then
        utilityStationStatus[utilityId] = {
            occupied = false
        }
    end
    
    local requestType = requestData.info
    
    if requestType == "checkStatus" then
        -- Return current occupation status of the utility station
        callback(utilityStationStatus[utilityId].occupied)
        
    elseif requestType == "changeStatus" then
        -- Update player occupation tracking
        local newOccupationStatus = requestData.status
        playerOccupiedStations[playerIdentifier] = newOccupationStatus and {id = utilityId} or {}
        
        -- Update utility station occupation status
        utilityStationStatus[utilityId].occupied = newOccupationStatus
    end
end)

-- Handle player disconnection cleanup
AddEventHandler("playerDropped", function(reason)
    local playerIdentifier = GetIdentifier(source)
    
    -- Clean up occupied stations when player disconnects
    local occupiedStation = playerOccupiedStations[playerIdentifier]
    if occupiedStation then
        for utilityId, utilityData in pairs(utilityStationStatus) do
            if utilityId == occupiedStation.id then
                utilityData.occupied = false
                break
            end
        end
    end
    
    -- Clean up mission tracking when player disconnects
    local playerMission = playersOnMissions[playerIdentifier]
    if playerMission then
        for missionId, missionData in pairs(Missions) do
            if missionId == playerMission.id then
                playersOnMissions[playerIdentifier] = {}
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

-- Get player's Discord identifier
-- @param playerId: The player's server ID
-- @return: Discord identifier without the "discord:" prefix, or nil if not found
function GetPlayerDiscord(playerId)
    local playerIdentifiers = GetPlayerIdentifiers(playerId)
    
    for _, identifier in pairs(playerIdentifiers) do
        local identifierPrefix = string.sub(identifier, 1, string.len("discord:"))
        if identifierPrefix == "discord:" then
            return identifier:gsub("discord:", "")
        end
    end
    
    return nil
end

-- Search for a specific item in a list of items
-- @param targetItem: Item name to search for
-- @param itemList: List of items to search through
-- @return: Item data table if found, false otherwise
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

-- Load special objects for a specific client
-- @param playerId: Target player ID to load objects for
function LoadSpecialObjects(playerId)
    TriggerClientEvent(TriggerName("spawnSpecialObjects"), playerId)
end