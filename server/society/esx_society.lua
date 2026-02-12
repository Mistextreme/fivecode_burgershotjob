CreateThread(function()
    if BossMenuSociety == 'esx_society' then
        function AddMoneyToSociety(name, amount)
            TriggerEvent('esx_addonaccount:getSharedAccount', name, function(account)
                account.addMoney(amount)
            end)
        end

        RegisterCallback(TriggerName('GetSocietyMoney'), function(source, cb, societyName)
            TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
                cb(account)
            end)
        end)

        TriggerEvent('esx_society:registerSociety', JobInfo.society.label:lower(), JobInfo.society.label, JobInfo.society.name, JobInfo.society.name, JobInfo.society.name, {type = 'public'})
    end
end)