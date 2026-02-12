-- Burger Shot Job - Client Utilities
-- Contains client-side utility functions for various integrations and customizations

-- Define male and female ped models for NPC creation
MaleFemalePeds = {
    male = {'mp_m_freemode_01'},
    female = {'mp_f_freemode_01'}
}

-- Police alert system integration
-- Customize this function to integrate with your preferred dispatch system
function ActivatePoliceAlert()
    -- Example integration with cd_dispatch:
    --[[
    local playerData = exports['cd_dispatch']:GetPlayerInfo()
    TriggerServerEvent('cd_dispatch:AddNotification', {
        job_table = {'police'}, 
        coords = playerData.coords,
        title = '10-15 - Store Robbery',
        message = 'Possible store robbery at ' .. playerData.street, 
        flash = 0,
        unique_id = playerData.unique_id,
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
    --]]
    
    -- Default fallback - replace with your dispatch system
    print('Police alert activated!')
end

-- Stress relief system integration
-- @param stressValue: Amount of stress to remove (optional)
function RemovePlayerStress(stressValue)
    local stressAmount
    
    if Framework.type == 'esx' then
        stressAmount = stressValue or 600
        TriggerServerEvent('hud:server:RelieveStress', stressAmount)
    elseif Framework.type == 'qbcore' then
        stressAmount = stressValue or 1
        TriggerServerEvent('hud:server:RelieveStress', stressAmount)
    end
end

-- Vehicle key system integration
-- Called when a vehicle is spawned from the garage
-- @param vehicleInfo: Table containing vehicle data
function VehicleSpawned(vehicleInfo)
    -- Example integration with fivecode_carkeys:
    --[[
    exports.fivecode_carkeys:GiveKey(vehicleInfo.vehicle, false, true)
    --]]
    
    -- Add your vehicle key system integration here
end

-- Vehicle key system cleanup
-- Called when a vehicle is despawned/returned to garage
-- @param vehicleInfo: Table containing vehicle data
function VehicleDespawned(vehicleInfo)
    -- Example integration with fivecode_carkeys:
    --[[
    exports.fivecode_carkeys:GiveKey(vehicleInfo.vehicle, false, false)
    --]]
    
    -- Add your vehicle key system cleanup here
end

-- 3D text rendering utility
-- @param x, y, z: World coordinates for text display
-- @param text: Text content to display
function Draw3DText(x, y, z, text)
    local onScreen, screenX, screenY = World3dToScreen2d(x, y, z)

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(0)
        SetTextColour(255, 255, 255, 215)
        SetTextCentre(true)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(screenX, screenY)
    end
end

-- Custom billing system integration
-- Customize this function to integrate with your preferred billing system
function CustomBilling()
    -- Add your custom billing menu export here
    -- Example: exports['your-billing-system']:OpenBillingMenu()
end

-- Player duty status change handler
-- @param onDuty: Boolean indicating if player is going on or off duty
function PlayerDuty(onDuty)
    if not onDuty then
        -- Logic for when the player goes ON duty
        -- Add any custom on-duty logic here
    else
        -- Logic for when the player goes OFF duty
        -- Add any custom off-duty logic here
    end
end

-- Clothing system integration
-- Handles outfit changes and resets based on configured skin selector
-- @param actionType: 'change' to apply outfit, 'reset' to restore original skin
-- @param outfitData: Outfit configuration table (only used for 'change' action)
function ChangeClothing(actionType, outfitData)
    local playerPed = PlayerPedId()

    if actionType == 'change' then
        -- Apply work outfit based on skin selector system
        if (SkinSelector == 'esx' or SkinSelector == 'rcore' or SkinSelector == 'fivem') and Framework.type == 'esx' then
            TriggerEvent('skinchanger:getSkin', function(currentSkin)
                TriggerEvent('skinchanger:loadClothes', currentSkin, outfitData)
            end)

        elseif (SkinSelector == 'qb' or SkinSelector == 'rcore' or SkinSelector == 'fivem') and Framework.type == 'qbcore' then
            TriggerEvent('qb-clothing:client:loadOutfit', ConvertOutfit(outfitData))

        elseif SkinSelector == 'illenium' then
            local convertedClothes = ConvertOutfit(outfitData)
            exports['illenium-appearance']:setPedComponents(playerPed, convertedClothes.components)
            exports['illenium-appearance']:setPedProps(playerPed, convertedClothes.props)

        elseif SkinSelector == 'bl' then
            exports['bl_appearance']:SetPlayerPedAppearance(playerPed, outfitData)

        elseif SkinSelector == 'tgiann' then
            TriggerEvent('tgiann-clothing:changeScriptClothe', outfitData)

        elseif SkinSelector == 'qs' then
            exports['qs-appearance']:setPedAppearance(playerPed, outfitData)
            
        elseif SkinSelector == 'ox' then
            exports['ox_appearance']:setPlayerAppearance(outfitData)
        end
        
        CanWearCivil = true
        
    elseif actionType == 'reset' then
        -- Reset to original civilian clothing
        if (SkinSelector == 'esx' or SkinSelector == 'fivem') and Framework.type == 'esx' then
            CORE.TriggerServerCallback('esx_skin:getPlayerSkin', function(playerSkin)
                TriggerEvent('skinchanger:loadSkin', playerSkin)
                TriggerEvent('esx:restoreLoadout')
            end)

        elseif (SkinSelector == 'qb' or SkinSelector == 'fivem') and Framework.type == 'qbcore' then
            TriggerEvent('qb-clothing:client:loadPlayerSkin')

        elseif SkinSelector == 'rcore' then
            TriggerServerEvent('rcore_clothing:reloadSkin')

        elseif SkinSelector == 'illenium' or SkinSelector == 'qs' then
            TriggerEvent('illenium-appearance:client:reloadSkin')

        elseif SkinSelector == 'bl' then
            local currentAppearance = exports['bl_appearance']:GetPlayerPedAppearance(playerPed)
            exports['bl_appearance']:SetPlayerPedAppearance(playerPed, currentAppearance)

        elseif SkinSelector == 'tgiann' then
            TriggerEvent('tgiann-clothing:changeScriptClothe')

        elseif SkinSelector == 'ox' then
            local currentAppearance = exports['ox_appearance']:getPedAppearance(playerPed)
            exports['ox_appearance']:setPlayerAppearance(playerPed, currentAppearance)
        end
        
        CanWearCivil = false
    end
end