-- Crafting Server Module
-- Handles ingredient checking and cooked item distribution

-- Register give cooked item event
RegisterNetEvent(TriggerName("giveCookedItem"))
AddEventHandler(TriggerName("giveCookedItem"), function(stationType, itemInfo, stationId)
    local playerIdentifier = GetIdentifier(source)
    local notificationMessage = nil
    
    -- Verify player is using the correct station
    local playerStation = PlayerOccupied[playerIdentifier]
    if playerStation.id == stationId then
        -- Give the cooked item to player
        AddItem(source, itemInfo.item:lower(), itemInfo.amount, nil)
        
        -- Log crafting activity to Discord
        DiscordLogs(source, {
            itemName = itemInfo.item:lower(),
            amount = itemInfo.amount
        }, "crafting")
        
        -- Set appropriate completion message
        if stationType == "packingTable" then
            notificationMessage = _U("crafting_finished_packing", itemInfo.label:lower())
        else
            notificationMessage = _U("crafting_finished_cooking", itemInfo.label:lower())
        end
        
        -- Notify player of successful crafting
        TriggerClientEvent(TriggerName("notify"), source,
            _U("crafting_notify_title"),
            notificationMessage,
            Config.NotifyType.info
        )
    end
end)

-- Check if player has all required ingredients
function HasAllIngredients(playerId, ingredientsList, itemInfo)
    local craftingResult = {
        canCook = true,
        missingItems = {}
    }
    
    -- Check if player can carry the final item
    local canCarryItem = CanCarry(playerId, itemInfo.item, itemInfo.amount)
    if not canCarryItem then
        Debug("No inventory space = user is not able to cook.")
        return "cannotCarry"
    end
    
    -- Check each ingredient requirement
    for _, ingredientGroup in pairs(ingredientsList) do
        for _, ingredient in ipairs(ingredientGroup) do
            local playerItemCount = GetInventoryItemCount(playerId, ingredient.item, nil)
            local requiredAmount = ingredient.amount
            
            if playerItemCount < requiredAmount then
                craftingResult.canCook = false
                local missingAmount = requiredAmount - playerItemCount
                table.insert(craftingResult.missingItems, 
                    ingredient.label .. " - " .. missingAmount)
            end
        end
    end
    
    if craftingResult.canCook then
        -- Remove ingredients from player inventory
        for _, ingredientGroup in pairs(ingredientsList) do
            for _, ingredient in ipairs(ingredientGroup) do
                RemoveItem(playerId, ingredient.item, ingredient.amount, nil)
            end
        end
        return true
    else
        -- Notify player of missing ingredients
        local missingItemsText = _U("crafting_missing", table.concat(craftingResult.missingItems, ", "))
        TriggerClientEvent(TriggerName("notify"), playerId,
            _U("crafting_notify_title"),
            missingItemsText,
            Config.NotifyType.error
        )
        return false
    end
end

-- Register ingredient check callback
RegisterCallback(TriggerName("checkIngredience"), function(playerId, callback, ingredientsList, itemInfo)
    local hasIngredients = HasAllIngredients(playerId, ingredientsList, itemInfo)
    callback(hasIngredients)
end)