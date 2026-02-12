CreateThread(function()
    if BossMenuSociety == 'okokBanking' then
        function AddMoneyToSociety(name, amount)
            exports['okokBanking']:AddMoney(JobInfo.name, amount)
        end

        RegisterCallback(TriggerName('GetSocietyMoney'), function(source, cb, societyName)
            local money = exports['okokBanking']:GetAccount(JobInfo.name)
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
        
                societyMoney = exports['okokBanking']:GetAccount(JobInfo.name)
        
                if type == _U('bossmenu_society_withdraw') and societyMoney < amount then
                    return TriggerClientEvent(TriggerName('notify'), source, false, _U('bossmenu_society_action_money_withdraw_notenough'), Config.NotifyType.error)
                end
        
                if type == _U('bossmenu_society_deposit') then
                    RemoveMoney(source, 'cash', amount)
                    exports['okokBanking']:AddMoney(JobInfo.name, amount)
                elseif type == _U('bossmenu_society_withdraw') then
                    AddMoney(source, amount)
                    exports['okokBanking']:RemoveMoney(JobInfo.name, amount)
                elseif type == _U('bossmenu_society_wash') then
                    --
                end

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