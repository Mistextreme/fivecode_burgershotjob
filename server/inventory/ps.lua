CreateThread(function()
    if Inventory == 'ps' then
        function GetInventoryItemCount(source, item, metadata)
            local item = exports['ps-inventory']:GetItemByName(source, item)
            item = item and item.amount or 0
            return item
        end

        function CanCarry(source, item, amount)
            -- The ps-inventory system does not currently support checking the weight of items in the inventory.
            return true
        end

        function AddItem(source, item, amount, metadata)
            exports['ps-inventory']:AddItem(source, item, amount, nil, metadata)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['ps-inventory']:RemoveItem(source, item, amount, nil)
        end
    
        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            TriggerClientEvent(TriggerName('openStash'), source, stashName, stashLabel, slots, weight, owner, job)
        end

        function DeleteStash(stashName)
            MySQL.Async.execute([[ 
                DELETE FROM stashitems
                WHERE stash = ?
            ]], {stashName})
        end

        for _, item in pairs(UsableItems.food) do
            CORE.Functions.CreateUseableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('useFoodItem'), source, item.name)
            end)
        end
        
        for _, item in pairs(UsableItems.tray) do
            CORE.Functions.CreateUseableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('placeTray'), source, item.name)
            end)
        end
    end
end)
