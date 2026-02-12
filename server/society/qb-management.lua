CreateThread(function()
    if BossMenuSociety == 'qb-management' then
        function AddMoneyToSociety(name, amount)
            local societyMoney = MySQL.query.await('SELECT amount FROM  management_funds WHERE job_name = ?', {JobInfo.name}, function() end)

            if not societyMoney then return end
            societyMoney = societyMoney[1].amount + amount
            MySQL.update('UPDATE management_funds SET amount = ? WHERE job_name = ?', {societyMoney, JobInfo.name}, function() end)
        end

        RegisterCallback(TriggerName('GetSocietyMoney'), function(source, cb, societyName)
            local money
            local society = MySQL.query.await('SELECT job_name, amount FROM management_funds WHERE type = "boss"', {})
            for _, society in ipairs(society) do
                if society.job_name == JobInfo.name then
                    money = society.amount
                    break
                end
            end
            cb({money = money})
        end)

        RegisterNetEvent(TriggerName('societyDepWitWas'))
        AddEventHandler(TriggerName('societyDepWitWas'), function(type, societyName, amount)
            local source = source
            local societyMoney
            local lastNotifTxt
        
            if GetPlayer(source).PlayerData.job.isboss and GetPlayerJobInfo(source).name == JobInfo.name then
                if type == _U('bossmenu_society_deposit') and GetMoney(source, 'cash') < amount then
                    return TriggerClientEvent(TriggerName('notify'), source, false, _U('bossmenu_society_action_money_deposit_notenough'), Config.NotifyType.error)
                end
        
                societyMoney = MySQL.query.await('SELECT amount FROM  management_funds WHERE job_name = ?', {societyName}, function() end)
                societyMoney = societyMoney[1].amount
        
                if type == _U('bossmenu_society_withdraw') and societyMoney < amount then
                    return TriggerClientEvent(TriggerName('notify'), source, false, _U('bossmenu_society_action_money_withdraw_notenough'), Config.NotifyType.error)
                end
                if type == _U('bossmenu_society_deposit') then
                    societyMoney = societyMoney + amount
                    RemoveMoney(source, 'cash', amount)
                elseif type == _U('bossmenu_society_withdraw') then
                    societyMoney = societyMoney - amount
                    AddMoney(source, amount)
                elseif type == _U('bossmenu_society_wash') then
                    --
                end

                MySQL.update('UPDATE management_funds SET amount = ? WHERE job_name = ?', {societyMoney, societyName}, function() end)

                if type == _U('bossmenu_society_deposit') then
                    lastNotifTxt = _U('bossmenu_society_action_money_deposited', amount)
                elseif type == _U('bossmenu_society_withdraw') then
                    lastNotifTxt = _U('bossmenu_society_action_money_withdrew', amount)
                elseif type == _U('bossmenu_society_wash') then
                    --
                end

                TriggerClientEvent(TriggerName('notify'), source, false, lastNotifTxt, Config.NotifyType.info)
            end
        end)
    end
end)