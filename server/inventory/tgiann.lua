CreateThread(function()
    if Inventory == 'tgiann' then
        function GetInventoryItemCount(source, item, metadata)
            return exports['tgiann-inventory']:GetItemCount(source, item)
        end

        function CanCarry(source, item, amount)
            return exports['tgiann-inventory']:CanCarryItem(source, item, amount)
        end

        function AddItem(source, item, amount, metadata)
            exports['tgiann-inventory']:AddItem(source, item, amount, nil, metadata, false)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['tgiann-inventory']:RemoveItem(source, item, amount, nil, nil)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            exports['tgiann-inventory']:OpenInventory(source, 'stash', stashName, {maxWeight = weight, slots = slots, label = stashLabel})
        end
    
        function DeleteStash(stashName)
            exports['tgiann-inventory']:DeleteInventory('stash', stashName)
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