CreateThread(function()
    if Inventory == 'origen' then
        function GetInventoryItemCount(source, item, metadata)
            return exports['origen_inventory']:getItemCount(source, item)
        end

        function CanCarry(source, item, amount)
            return exports['origen_inventory']:CanCarryItem(source, item, amount)
        end

        function AddItem(source, item, amount, metadata)
            exports['origen_inventory']:AddItem(source, item, amount, nil, metadata)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['origen_inventory']:RemoveItem(source, item, amount, nil)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            exports['origen_inventory']:registerStash(stashName, stashLabel, slots, weight)
            exports['origen_inventory']:OpenInventory(source, 'stash', stashName)
        end
    
        function DeleteStash(stashName)
            MySQL.Async.execute([[ 
                DELETE FROM stashitems
                WHERE id = ?
            ]], {stashName})
        end
        
        for _, item in pairs(UsableItems.food) do
            exports['origen_inventory']:CreateUsableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('useFoodItem'), source, item.name)
            end)
        end
        
        for _, item in pairs(UsableItems.tray) do
            exports['origen_inventory']:CreateUsableItem(item, function(source, item)
                TriggerClientEvent(TriggerName('placeTray'), source, item.name)
            end)
        end
    end
end)