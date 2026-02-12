CreateThread(function()
    if Inventory == 'codem' then
        RegisterNetEvent(TriggerName('openStash'))
        AddEventHandler(TriggerName('openStash'), function(stashName, stashLabel, slots, weight, owner, job)
            TriggerServerEvent('inventory:server:OpenInventory', 'stash', stashName, {slots = slots, maxweight = weight, owner = owner, job = job})
            TriggerServerEvent('codem-inventory:server:openstash', stashName, slot, weight, stashLabel)
        end)
    end
end)