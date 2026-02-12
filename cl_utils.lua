MaleFemalePeds = {   -- Define the male and female ped models.
    male = {'mp_m_freemode_01'},
    female = {'mp_f_freemode_01'}
}

--[[ 

- Example:

function ActivatePoliceAlert()
    local data = exports['cd_dispatch']:GetPlayerInfo()
    TriggerServerEvent('cd_dispatch:AddNotification', {
        job_table = {'police', }, 
        coords = data.coords,
        title = '10-15 - Store Robbery',
        message = 'Possible store robbery at '..data.street, 
        flash = 0,
        unique_id = data.unique_id,
        sound = 1,
        blip = {
            sprite = 431, 
            scale = 1.2, 
            colour = 3,
            flashes = false, 
            text = '911 - Store Robbery',
            time = 5,
            radius = 0,
        }
    })
end

]]
function ActivatePoliceAlert()
    print('Police alert activated!')
end

function RemovePlayerStress(stressValue)
    local value
    if Framework.type == 'esx' then
        value = stressValue or 600
        TriggerServerEvent('hud:server:RelieveStress', value)
    elseif Framework.type == 'qbcore' then
        value = stressValue or 1
        TriggerServerEvent('hud:server:RelieveStress', value)
    end
end

--[[
vehInfo = {
    vehicle     -- Vehicle Id.
    vehType     -- Vehicle type.
    vehPlate    -- Vehicle plate.
    vehName     -- Vehicle name.
    spawnName   -- Vehicle spawn name.
    image       -- Vehicle image from garage menu.
}
]]

--[[ Get our vehicle key script here - https://fivecode.tebex.io/package/5458905.
Example:

 - Add Keys
    exports.fivecode_carkeys:GiveKey(vehInfo.vehicle, false, true)

 - Remove Keys
    exports.fivecode_carkeys:GiveKey(vehInfo.vehicle, false, false)

]]
function VehicleSpawned(vehInfo)

end

function VehicleDespawned(vehInfo)
    
end

-- 3D text:
function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(0)
        SetTextColour(255, 255, 255, 215)
        SetTextCentre(true)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

-- Custom billing:
function CustomBilling()
    -- Your billing menu export.
end

-- Duty  system:
function PlayerDuty(onDuty)
    if not onDuty then
        -- Logic for when the player goes ON duty.
    else
        -- Logic for when the player goes OFF duty.
    end
end

-- Clothing:
function ChangeClothing(type, outfit)
    local ped = PlayerPedId()

    if type == 'change' then
        if (SkinSelector == 'esx' or SkinSelector == 'rcore' or SkinSelector == 'fivem') and Framework.type == 'esx' then
            TriggerEvent('skinchanger:getSkin', function(skin)
                TriggerEvent('skinchanger:loadClothes', skin, outfit)
            end)

        elseif (SkinSelector == 'qb' or SkinSelector == 'rcore' or SkinSelector == 'fivem') and Framework.type == 'qbcore' then
            TriggerEvent('qb-clothing:client:loadOutfit', ConvertOutfit(outfit))

        elseif SkinSelector == 'illenium' then
            local clothes = ConvertOutfit(outfit)
            exports['illenium-appearance']:setPedComponents(ped, clothes.components)
            exports['illenium-appearance']:setPedProps(ped, clothes.props)

        elseif SkinSelector == 'bl' then
            exports['bl_appearance']:SetPlayerPedAppearance(ped, outfit)

        elseif SkinSelector == 'tgiann' then
            TriggerEvent('tgiann-clothing:changeScriptClothe', outfit)

        elseif SkinSelector == 'qs' then
            exports['qs-appearance']:setPedAppearance(ped, outfit)
            
        elseif SkinSelector == 'ox' then
            exports['ox_appearance']:setPlayerAppearance(outfit)

        end
        CanWearCivil = true
    elseif type == 'reset' then
        if (SkinSelector == 'esx' or SkinSelector == 'fivem') and Framework.type == 'esx' then
            CORE.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                TriggerEvent('skinchanger:loadSkin', skin)
                TriggerEvent('esx:restoreLoadout')
            end)

        elseif (SkinSelector == 'qb' or SkinSelector == 'fivem') and Framework.type == 'qbcore' then
            TriggerEvent('qb-clothing:client:loadPlayerSkin')

        elseif SkinSelector == 'rcore' then
            TriggerServerEvent('rcore_clothing:reloadSkin')

        elseif SkinSelector == 'illenium' or SkinSelector == 'qs' then
            TriggerEvent('illenium-appearance:client:reloadSkin')

        elseif SkinSelector == 'bl' then
            exports['bl_appearance']:SetPlayerPedAppearance(ped, exports['bl_appearance']:GetPlayerPedAppearance(ped))

        elseif SkinSelector == 'tgiann' then
            TriggerEvent('tgiann-clothing:changeScriptClothe')

        elseif SkinSelector == 'ox' then
            exports['ox_appearance']:setPlayerAppearance(ped, exports['ox_appearance']:getPedAppearance(ped))

        end
        CanWearCivil = false
    end
end