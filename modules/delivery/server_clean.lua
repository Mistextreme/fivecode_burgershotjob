-- Burger Shot Delivery System - Server Side
-- Handles delivery missions, rewards, and player state management

-- Global delivery tracking variables
local playersDeliveryData = {}
local playersOnDelivery = {}
local playersDeliveryCooldown = {}
local playersDeliveryCooldownTime = {}

-- Sync phone notification between players
RegisterNetEvent(TriggerName("syncPhone"))
AddEventHandler(TriggerName("syncPhone"), function(phoneNumber, message)
    TriggerClientEvent(TriggerName("syncPhone"), -1, phoneNumber, message)
end)

-- Load delivery data for reconnecting players
RegisterNetEvent(TriggerName("loadDeliveryData"))
AddEventHandler(TriggerName("loadDeliveryData"), function()
    LoadDeliveryData(source)
end)

-- Save delivery progress data
RegisterNetEvent(TriggerName("saveDeliveryData"))
AddEventHandler(TriggerName("saveDeliveryData"), function(deliveryData)
    local playerId = source
    local playerIdentifier = GetIdentifier(playerId)
    
    playersDeliveryData[playerIdentifier] = {
        playerReconnect = deliveryData.playerReconnect,
        deliveryCoords = deliveryData.deliveryCoords,
        deliveryTip = deliveryData.deliveryTip,
        deliveryDangerous = deliveryData.deliveryDangerous,
        npcData = deliveryData.npcData,
        jobName = deliveryData.jobName,
        reward = deliveryData.reward,
        tip = deliveryData.tip,
        item = deliveryData.item
    }
end)

-- Handle delivery status changes (start, stop, finished)
RegisterNetEvent(TriggerName("deliveryPlayerStatus"))
AddEventHandler(TriggerName("deliveryPlayerStatus"), function(statusData)
    local playerId = source
    local playerIdentifier = GetIdentifier(playerId)
    local deliveryStatus = statusData.status
    local cooldownMinutes = statusData.cooldown
    
    if deliveryStatus == "start" then
        -- Start new delivery mission
        if not playersOnDelivery[playerIdentifier] then
            playersOnDelivery[playerIdentifier] = true
            playersDeliveryCooldown[playerIdentifier] = true
            playersDeliveryCooldownTime[playerIdentifier] = os.time()
            
            -- Set cooldown timer
            SetTimeout(cooldownMinutes * 60000, function()
                playersDeliveryCooldown[playerIdentifier] = false
                playersDeliveryCooldownTime[playerIdentifier] = nil
                
                TriggerClientEvent(
                    TriggerName("notify"),
                    playerId,
                    false,
                    _U("delivery_cooldown_end", JobInfo.label),
                    Config.NotifyType.info
                )
            end)
        end
        
    elseif deliveryStatus == "stop" then
        -- Stop current delivery mission
        playersOnDelivery[playerIdentifier] = nil
        playersDeliveryData[playerIdentifier] = {}
        
    elseif deliveryStatus == "finished" then
        -- Complete delivery mission and calculate rewards
        if playersOnDelivery[playerIdentifier] then
            local tipAmount = 0
            local baseReward = 0
            
            -- Calculate tip if eligible
            if statusData.tip then
                local tipChance = math.random(statusData.tipChances.min, statusData.tipChances.max)
                tipAmount = tipChance or 0
            end
            
            -- Calculate base delivery reward (split 50/50 with society)
            local totalReward = math.random(statusData.rewardChances.min, statusData.rewardChances.max)
            baseReward = math.floor(totalReward / 2)
            tipAmount = math.floor(tipAmount)
            
            -- Give money to player (reward + tip)
            AddMoney(playerId, baseReward + tipAmount)
            
            -- Add money to society account
            AddMoneyToSociety(JobInfo.society.name:lower(), baseReward)
            
            -- Log delivery completion
            DiscordLogs(playerId, {
                reward = baseReward,
                tip = tipAmount
            }, "deliveryReward")
            
            -- Clean up delivery tracking
            playersOnDelivery[playerIdentifier] = nil
            playersDeliveryData[playerIdentifier] = {}
            
            -- Notify player about tip if received
            if tipAmount > 0 then
                TriggerClientEvent(
                    TriggerName("notify"),
                    playerId,
                    _U("delivery_customer"),
                    _U("delivery_got_tip", tipAmount),
                    Config.NotifyType.info
                )
            end
        end
    end
end)

-- Check if player is currently on delivery
RegisterCallback(TriggerName("checkPlayerDeliveryStatus"), function(playerId, callback)
    local playerIdentifier = GetIdentifier(playerId)
    callback(playersOnDelivery[playerIdentifier])
end)

-- Check delivery cooldown status
RegisterCallback(TriggerName("checkPlayerDeliveryCooldown"), function(playerId, callback, cooldownMinutes)
    local playerIdentifier = GetIdentifier(playerId)
    
    if playersDeliveryCooldown[playerIdentifier] then
        local timeElapsed = os.difftime(playersDeliveryCooldownTime[playerIdentifier], os.time())
        local remainingTime = timeElapsed + (cooldownMinutes * 60)
        
        local cooldownMessage = _U("delivery_cooldown_need_to_wait", math.floor(remainingTime))
        callback(true)
        
        TriggerClientEvent(
            TriggerName("notify"),
            playerId,
            false,
            cooldownMessage,
            Config.NotifyType.error
        )
        return
    end
    
    callback(false)
end)

-- Verify player has required delivery items
RegisterCallback(TriggerName("hasFood"), function(playerId, callback, orderData)
    -- Skip item check if delivery items are disabled
    if not Config.DeliveryItem then
        callback(true)
        return
    end
    
    local requiredItem = orderData.item
    local requiredAmount = orderData.amount
    local itemLabel = orderData.label
    
    local playerItemCount = GetInventoryItemCount(playerId, requiredItem, nil)
    
    if requiredAmount > playerItemCount then
        callback(false)
        
        TriggerClientEvent(
            TriggerName("notify"),
            playerId,
            false,
            _U("delivery_order_missing", itemLabel, requiredAmount),
            Config.NotifyType.error
        )
        return
    end
    
    -- Remove required items from player inventory
    callback(true)
    RemoveItem(playerId, requiredItem, requiredAmount, nil)
end)

-- Load saved delivery data for reconnecting players
function LoadDeliveryData(playerId)
    local playerIdentifier = GetIdentifier(playerId)
    
    Wait(1000) -- Allow player to fully load
    
    if playerIdentifier then
        -- Initialize delivery data if not exists
        if not playersDeliveryData[playerIdentifier] then
            playersDeliveryData[playerIdentifier] = {}
        end
        
        -- Check if player has saved delivery data
        if next(playersDeliveryData[playerIdentifier]) then
            -- Send saved data to client and clear server storage
            TriggerClientEvent(
                TriggerName("loadDeliveryData"),
                playerId,
                playersDeliveryData[playerIdentifier]
            )
            playersDeliveryData[playerIdentifier] = {}
        end
    end
end