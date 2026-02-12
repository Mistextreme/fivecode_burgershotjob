CORE = nil

CreateThread(function()
    if Framework.type == 'qbcore' then
        CORE = exports[Framework.export]:GetCoreObject()

        function GetPlayerInfo()
            return CORE.Functions.GetPlayerData()
        end

        function GetIdentifier()
            return GetPlayerInfo().citizenid
        end

        function GetPlayerJobInfo()
            local jobInfo = GetPlayerInfo()
            if jobInfo.job then
                return {name = jobInfo.job.name, gradeLevel = jobInfo.job.grade.level, gradeName = jobInfo.job.grade.name:lower()}
            end
        end

        function GetClosestPlayer()
            return CORE.Functions.GetClosestPlayer()
        end

        function SocietyDepWitWas(type, societyName, amount)
            TriggerServerEvent(TriggerName('societyDepWitWas'), type, societyName, amount)
        end

        function GetVehiclesInArea(coords, maxDistance)
            return EnumerateEntitiesWithinDistance(CORE.Functions.GetVehicles(), false, coords, maxDistance)
        end

        function UpdatePlayerFoodStatus(type, value)
            -- type: hunger, thirst
            if type == 'hunger' then
                TriggerServerEvent('consumables:server:addHunger', value)
            elseif type == 'thirst' then
                TriggerServerEvent('consumables:server:addThirst', value)
            end
        end
        
        RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
            RemoveDeliveryStuff()
            DeleteSpecialObjects()
        end)
    end
end)