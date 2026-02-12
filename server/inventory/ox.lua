CreateThread(function()
    if Inventory == 'ox' then
        function GetInventoryItemCount(source, item, metadata)
            local item = exports['ox_inventory']:Inventory().GetItem(source, item, metadata, false)
            item = item and item.count or 0
            return item
        end

        function CanCarry(source, item, amount)
            return exports['ox_inventory']:CanCarryItem(source, item, amount)
        end

        function AddItem(source, item, amount, metadata)
            exports['ox_inventory']:Inventory().AddItem(source, item, amount, metadata)
        end

        function RemoveItem(source, item, amount, metadata)
            exports['ox_inventory']:Inventory().RemoveItem(source, item, amount, metadata)
        end

        function CreateOpenStash(source, stashName, stashLabel, slots, weight, owner, job)
            exports['ox_inventory']:RegisterStash(stashName, stashLabel, slots, weight, owner, job)
            exports['ox_inventory']:forceOpenInventory(source, 'stash', stashName)
        end

        function DeleteStash(stashName)
            exports['ox_inventory']:ClearInventory(stashName, nil)
        end

        if Framework.type == 'esx' then
            for _, item in pairs(UsableItems.food) do
                CORE.RegisterUsableItem(item, function(source, item)
                    TriggerClientEvent(TriggerName('useFoodItem'), source, item)
                end)
            end

            for _, item in pairs(UsableItems.tray) do
                CORE.RegisterUsableItem(item, function(source, item)
                    TriggerClientEvent(TriggerName('placeTray'), source, item)
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