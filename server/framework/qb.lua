CORE = nil

CreateThread(function()
    if Framework.type == 'qbcore' then
        CORE = exports[Framework.export]:GetCoreObject()

        function GetPlayer(source)
            if source ~= nil then
                return CORE.Functions.GetPlayer(tonumber(source))
            end
        end

        function GetPlayers()
            return CORE.Functions.GetPlayers()
        end

        function GetIdentifier(source)
            if GetPlayer(source) then
                return GetPlayer(source).PlayerData.citizenid
            end
        end

        function GetPlayerJobInfo(source)
            local info = {name = GetPlayer(source).PlayerData.job.name, gradeName = GetPlayer(source).PlayerData.job.grade.name:lower()}
            return info
        end

        function GetOfflinePlayerByCitizenId(identifier)
            return CORE.Functions.GetOfflinePlayerByCitizenId(identifier)
        end

        function GetPlayerFromIdentifier(identifier)
            return CORE.Functions.GetPlayerByCitizenId(identifier)
        end

        function SetJob(xPlayer, jobName, jobGrade)
            if jobName ~= nil and jobGrade ~= nil then
                xPlayer.Functions.SetJob(jobName, jobGrade)
            end
        end

        function GetMoney(source, type)
            if GetPlayer(source) then
                if type == 'cash' then
                    return GetPlayer(source).Functions.GetMoney('cash')
                else
                    return GetPlayer(source).Functions.GetMoney('bank')
                end
            end
        end

        function AddMoney(source, amount)
            return GetPlayer(source).Functions.AddMoney('cash', amount)
        end

        function RemoveMoney(source, type, amount)
            if source ~= nil and GetPlayer(source) then
                if type == 'cash' then
                    GetPlayer(source).Functions.RemoveMoney('cash', tonumber(amount), 'chat-advertisement-cash')
                else
                    GetPlayer(source).Functions.RemoveMoney('bank', tonumber(amount), 'chat-advertisement-bank')
                end
            end
        end

        AddEventHandler('QBCore:Server:PlayerLoaded', function(Player)
            local source = Player.PlayerData.source
            Wait(1000)
            LoadDeliveryData(source)
            LoadSpecialObjects(source)
        end)
    end
end)