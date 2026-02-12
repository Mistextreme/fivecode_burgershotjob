CreateThread(function()
    if Inventory == 'core' then
        function GetInventoryItemCount(source, item, metadata)
            return exports['core_inventory']:getItemCount(source, item)
        end

        function CanCarry(source, item, amount)
            return exports['core_inventory']:canCarry(source, item, amount, nil)
        end

        function AddItem(source, item, amount, metadata)
            exports['core_inventory']:addItem(source, item, amount, metadata, 'content')
        end

        function RemoveItem(source, item, amount, metadata)
            exports['core_inventory']:removeItem(source, item, amount)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            exports['core_inventory']:openInventory(source, stashName, 'stash', nil, nil, true, nil, false)
        end

        function DeleteStash(stashName)
            exports['core_inventory']:clearInventory(stashName, nil)
        end

        if Framework.type == 'esx' then
            for _, item in pairs(UsableItems.food) do
                CORE.RegisterUsableItem(item, function(source, itemName, itemData)
                    TriggerClientEvent(TriggerName('useFoodItem'), source, itemName)
                end)
            end

            for _, item in pairs(UsableItems.tray) do
                CORE.RegisterUsableItem(item, function(source, itemName, itemData)
                    TriggerClientEvent(TriggerName('placeTray'), source, itemName)
                end)
            end
        elseif Framework.type == 'qbcore' then
            for _, item in pairs(UsableItems.food) do
                CORE.Functions.CreateUseableItem(item, function(source, itemName, itemData)
                    TriggerClientEvent(TriggerName('useFoodItem'), source, itemName)
                end)
            end

            for _, item in pairs(UsableItems.tray) do
                CORE.Functions.CreateUseableItem(item, function(source, itemName, itemData)
                    TriggerClientEvent(TriggerName('placeTray'), source, itemName)
                end)
            end
        end
    end
end)