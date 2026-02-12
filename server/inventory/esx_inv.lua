CreateThread(function()
    if Inventory == 'esx_inv' then
        function GetInventoryItemCount(source, item, metadata)
            local xPlayer = GetPlayer(source)
            local item = xPlayer.getInventoryItem(item)
            item = item and item.count or 0
            return item
        end

        function CanCarry(source, item, amount)
            -- The esx_inventory system does not currently support checking the weight of items in the inventory.
            return true
        end

        function AddItem(source, item, amount, metadata)
            local xPlayer = GetPlayer(source)
            xPlayer.addInventoryItem(item, amount)
        end

        function RemoveItem(source, item, amount, metadata)
            local xPlayer = GetPlayer(source)
            xPlayer.removeInventoryItem(item, amount)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            TriggerClientEvent(TriggerName('openStash'), source, stashName, stashLabel, slots, weight, owner, job)
        end

        function DeleteStash(stashName)
            --
        end

        for _, item in pairs(UsableItems.food) do
            CORE.RegisterUsableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('useFoodItem'), source, item.name)
            end)
        end
        
        for _, item in pairs(UsableItems.tray) do
            CORE.RegisterUsableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('placeTray'), source, item.name)
            end)
        end
    end
end)