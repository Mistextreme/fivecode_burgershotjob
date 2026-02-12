CreateThread(function()
    if Inventory == 'codem' then
        function GetInventoryItemCount(source, item, metadata)
            local item = exports['codem-inventory']:GetItemByName(source, item)
            item = item and item.amount or 0
            return item
        end

        function CanCarry(source, item, amount)
            return exports['codem-inventory']:CanCarryItem(source, item, amount)
        end

        function AddItem(source, item, amount, metadata)
            exports['codem-inventory']:AddItem(source, item, tonumber(amount), nil, metadata)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['codem-inventory']:RemoveItem(source, item, tonumber(amount), nil)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            TriggerClientEvent(TriggerName('openStash'), source, stashName, stashLabel, slots, weight, owner, job)
        end
    
        function DeleteStash(stashName)
            MySQL.Async.execute([[ 
                DELETE FROM codem_new_stash
                WHERE stash = ?
            ]], {stashName})
        end

        if Framework.type == 'esx' then
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
        elseif Framework.type == 'qbcore' then
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
    end
end)