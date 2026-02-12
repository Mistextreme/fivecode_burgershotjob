CreateThread(function()
    if Inventory == 'qs' then
        function GetInventoryItemCount(source, item, metadata)
            return exports['qs-inventory']:GetItemTotalAmount(source, item)
        end

        function CanCarry(source, item, amount)
            return exports['qs-inventory']:CanCarryItem(source, item, amount)
        end

        function AddItem(source, item, amount, metadata)
            exports['qs-inventory']:AddItem(source, item, amount, nil, metadata)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['qs-inventory']:RemoveItem(source, item, amount, nil, nil)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            TriggerClientEvent(TriggerName('openStash'), source, stashName, stashLabel, slots, weight, owner, job)
        end

        function DeleteStash(stashName)
            MySQL.Async.execute([[ 
                DELETE FROM inventory_stash
                WHERE stash = ?
            ]], {stashName})
        end

        for _, item in pairs(UsableItems.food) do
            exports['qs-inventory']:CreateUsableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('useFoodItem'), source, item.name)
            end)
        end
        
        for _, item in pairs(UsableItems.tray) do
            exports['qs-inventory']:CreateUsableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('placeTray'), source, item.name)
            end)
        end
    end
end)
