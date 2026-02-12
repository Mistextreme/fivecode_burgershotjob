CreateThread(function()
    if Inventory == 'qb-new' then
        function GetInventoryItemCount(source, item, metadata)
            local item = exports['qb-inventory']:GetItemByName(source, item)
            item = item and item.amount or 0
            return item
        end

        function CanCarry(source, item, amount)
            -- The qb-inventory system does not currently support checking the weight of items in the inventory.
            return true
        end

        function AddItem(source, item, amount, metadata)
            exports['qb-inventory']:AddItem(source, item, amount, nil, metadata)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['qb-inventory']:RemoveItem(source, item, amount, nil)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            local data = {label = stashName, maxweight = weight, slots = slots}
            exports['qb-inventory']:OpenInventory(source, stashName, data)
        end

        function DeleteStash(stashName)
            MySQL.Async.execute([[ 
                DELETE FROM inventories
                WHERE identifier = ?
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