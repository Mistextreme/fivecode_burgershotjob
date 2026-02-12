CORE = nil

CreateThread(function()
    if Framework.type == 'esx' then
        CORE = exports[Framework.export]:getSharedObject()

        function GetPlayer(source)
            if source ~= nil then
                return CORE.GetPlayerFromId(source)
            end
        end

        function GetPlayers()
            return CORE.GetPlayers()
        end

        function GetExtendedPlayers(society)
            return CORE.GetExtendedPlayers('job', society)
        end

        function GetIdentifier(source)
            if GetPlayer(source) then
                return GetPlayer(source).getIdentifier(-1)
            end
        end

        function GetPlayerJobInfo(source)
            local info = {name = GetPlayer(source).job.name, gradeName = GetPlayer(source).job.grade_name}
            return info
        end

        function MysqlUpdate()
            return 'UPDATE users SET job = ?, job_grade = ? WHERE identifier = ?'
        end

        function GetPlayerFromIdentifier(identifier)
            return CORE.GetPlayerFromIdentifier(identifier)
        end

        function SetJob(xPlayer, jobName, jobGrade)
            if jobName ~= nil and jobGrade ~= nil then
                xPlayer.setJob(jobName, jobGrade)
            end
        end

        function GetMoney(source, type)
            if GetPlayer(source) then
                if type == 'cash' then
                    return GetPlayer(source).getAccount('money').money
                else
                    return GetPlayer(source).getAccount('bank').money
                end
            end
        end

        function AddMoney(source, amount)
            return GetPlayer(source).addAccountMoney('money', amount)
        end
        
        function RemoveMoney(source, type, amount)
            if source ~= nil and GetPlayer(source) then
                if type == 'cash' then
                    GetPlayer(source).removeMoney(amount)
                else
                    GetPlayer(source).removeAccountMoney('bank', amount)
                end
            end
        end

        AddEventHandler('esx:playerLoaded', function(source)
            local source = source
            Wait(1000)
            LoadDeliveryData(source)
            LoadSpecialObjects(source)
        end)
    end
end)