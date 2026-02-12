CreateThread(function()
    if Inventory == 'ps' then
        RegisterNetEvent(TriggerName('openStash'))
        AddEventHandler(TriggerName('openStash'), function(stashName, stashLabel, slots, weight, owner, job)
            TriggerServerEvent('ps-inventory:server:OpenInventory', 'stash', stashName, {slots = slots, maxweight = weight, owner = owner, job = job})
            TriggerEvent('ps-inventory:client:SetCurrentStash', stashName)
        end)
    end
end)