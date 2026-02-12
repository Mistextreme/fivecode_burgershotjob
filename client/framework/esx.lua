CORE = nil

CreateThread(function()
    if Framework.type == 'esx' then
        CORE = exports[Framework.export]:getSharedObject()

        function GetPlayerInfo()
            return CORE.GetPlayerData()
        end

        function GetIdentifier()
            return GetPlayerInfo().identifier
        end

        function GetPlayerJobInfo()
            local jobInfo = GetPlayerInfo()
            if jobInfo.job then
                return {name = jobInfo.job.name, gradeLevel = jobInfo.job.grade, gradeName = jobInfo.job.grade_name}
            end
        end

        function GetClosestPlayer()
            return CORE.Game.GetClosestPlayer()
        end

        function SocietyDepWitWas(type, societyName, amount)
            if BossMenuSociety ~= 'esx_society' then
                TriggerServerEvent(TriggerName('societyDepWitWas'), type, societyName, amount)
            else
                if type == _U('bossmenu_society_deposit') then
                    TriggerServerEvent('esx_society:depositMoney', societyName, amount)
                elseif type == _U('bossmenu_society_withdraw') then
                    TriggerServerEvent('esx_society:withdrawMoney', societyName, amount)
                elseif type == _U('bossmenu_society_wash') then
                    TriggerServerEvent('esx_society:washMoney', societyName, amount)
                end
            end
        end

        function GetVehiclesInArea(coords, maxDistance)
            return EnumerateEntitiesWithinDistance(CORE.Game.GetVehicles(), false, coords, maxDistance)
        end

        function UpdatePlayerFoodStatus(type, value)
            -- type: hunger, thirst
            TriggerEvent('esx_status:add', type, value)
            TriggerEvent('esx_status:add', type, value)
        end

        RegisterNetEvent('esx:onPlayerLogout', function()
            RemoveDeliveryStuff()
            DeleteSpecialObjects()
        end)
    end
end)