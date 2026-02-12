CreateThread(function()
    if Inventory == 'qb' then
        RegisterNetEvent(TriggerName('openStash'))
        AddEventHandler(TriggerName('openStash'), function(stashName, stashLabel, slots, weight, owner, job)
            TriggerServerEvent('inventory:server:OpenInventory', 'stash', stashName, {slots = slots, maxweight = weight, owner = owner, job = job})
            TriggerEvent('inventory:client:SetCurrentStash', stashName)
        end)
    end
end)