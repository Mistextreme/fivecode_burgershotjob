-- Crafting Client Module
-- Handles cooking station interactions and food preparation

-- Register cooking menu event
RegisterNetEvent(TriggerName("useCookingMenu"))
AddEventHandler(TriggerName("useCookingMenu"), function(cookingData)
    CallCallback(TriggerName("checkDuty"), function(isOnDuty)
        -- Check duty requirement
        if cookingData.args.duty and not isOnDuty then
            TriggerEvent(TriggerName("notify"), 
                _U("duty_notify_title"), 
                _U("not_on_duty"), 
                Config.NotifyType.error)
            return
        end
        
        -- Check job permission
        local hasJobPermission = MainCheck(cookingData.args.jobName)
        if hasJobPermission then
            local availableFood = cookingData.args.food
            local stationTitle = cookingData.args.title
            
            -- Create cooking menu
            local cookingMenu = {
                header = {
                    name = "useCookingMenu",
                    title = stationTitle
                },
                options = {}
            }
            
            menu = cookingMenu
            
            -- Add food items to menu
            for _, foodItem in pairs(availableFood) do
                local ingredientsList = {
                    ingredients = foodItem.ingredients
                }
                
                local itemInfo = {
                    name = foodItem.label,
                    item = foodItem.item,
                    cookingTime = foodItem.cookingTime * 1000
                }
                
                -- Build ingredients description
                local ingredientsText = ""
                for _, ingredient in pairs(foodItem.ingredients) do
                    ingredientsText = ingredientsText .. ingredient.label .. ": " .. ingredient.amount .. "\n"
                end
                
                table.insert(menu.options, {
                    title = foodItem.label,
                    description = _U("crafting_desc", foodItem.amount, foodItem.cookingTime, ingredientsText),
                    icon = "nui://" .. Images .. foodItem.image,
                    image = "nui://" .. Images .. foodItem.image,
                    arrow = true,
                    args = {
                        args = cookingData,
                        info = foodItem,
                        ingredients = ingredientsList,
                        title = stationTitle
                    },
                    event = "useCookingMenu1",
                    onSelect = function()
                        -- Check if station is available
                        CallCallback(TriggerName("checkUtils"), function(isOccupied)
                            if not isOccupied then
                                GetCookingAmount(cookingData, foodItem, ingredientsList, stationTitle)
                            else
                                TriggerEvent(TriggerName("notify"), false, 
                                    _U("crafting_somebody_using", stationTitle:lower()), 
                                    Config.NotifyType.error)
                            end
                        end, {
                            info = "checkStatus",
                            id = cookingData.args.id
                        })
                    end
                })
            end
            
            OpenMenu(menu)
        end
    end)
end)

-- Get cooking amount from player
function GetCookingAmount(cookingData, itemInfo, ingredientsData, stationTitle)
    local amountDialog = OpenDialogMenu({
        type = "setItemAmountCrafting",
        label = stationTitle,
        args = cookingData,
        menu = {
            {
                type = "number",
                label = _U("crafting_amount"),
                icon = "fas fa-cubes-stacked",
                required = true
            }
        }
    })
    
    if DialogMenu == "esx" then
        return
    end
    
    if not amountDialog or not amountDialog.value1 then
        return
    end
    
    local cookingAmount = tonumber(amountDialog.value1)
    
    if cookingAmount <= 0 then
        TriggerEvent(TriggerName("notify"), false, 
            _U("amount_not_number"), Config.NotifyType.error)
        return
    end
    
    if cookingAmount > Config.MaxCookingQuantity then
        TriggerEvent(TriggerName("notify"), 
            _U("crafting_notify_title"), 
            _U("crafting_limit", Config.MaxCookingQuantity), 
            Config.NotifyType.error)
        return
    end
    
    -- Handle QB dialog menu response
    if DialogMenu == "qb" then
        cookingData = amountDialog.menu.args
    end
    
    -- Multiply amounts if cooking more than 1
    if cookingAmount > 1 then
        itemInfo.amount = itemInfo.amount * cookingAmount
        itemInfo.cookingTime = itemInfo.cookingTime * cookingAmount
        
        for _, ingredient in pairs(itemInfo.ingredients) do
            ingredient.amount = ingredient.amount * cookingAmount
        end
    end
    
    -- Check ingredients availability
    CallCallback(TriggerName("checkIngredience"), function(canCraft)
        if canCraft == "cannotCarry" then
            return
        end
        
        if canCraft then
            cookingData.itemInfo = itemInfo
            StartCooking(cookingData)
        end
    end, ingredientsData, itemInfo)
end

-- Start cooking process
function StartCooking(cookingData)
    local playerPed = PlayerPedId()
    local stationId = cookingData.args.id
    local pedPosition = cookingData.args.pedPos
    local pedHeading = pedPosition.w
    local cookingTime = cookingData.itemInfo.cookingTime * 1000
    local itemInfo = cookingData.itemInfo
    local itemLabel = cookingData.itemInfo.label
    
    Busy = true
    
    -- Mark station as occupied
    CallCallback(TriggerName("checkUtils"), function() end, {
        info = "changeStatus",
        status = true,
        id = stationId
    })
    
    -- Disable movement and position player
    DisableMovementLoop()
    GoToCoords(playerPed, pedPosition, pedHeading)
    FreezeEntityPosition(playerPed, true)
    
    -- Start cooking animation
    CookingAnimation(cookingData.args.type, playerPed, cookingTime, itemInfo, itemLabel)
    
    -- Give cooked item to player
    TriggerServerEvent(TriggerName("giveCookedItem"), 
        cookingData.args.type, cookingData.itemInfo, stationId)
    
    -- Mark station as available
    CallCallback(TriggerName("checkUtils"), function() end, {
        info = "changeStatus",
        status = false,
        id = stationId
    })
    
    FreezeEntityPosition(playerPed, false)
    Busy = false
end

-- Handle cooking animations based on station type
function CookingAnimation(stationType, playerPed, cookingTime, itemInfo, itemLabel)
    DisableMovement = false
    local itemName = itemInfo.item
    
    if stationType == "fryer" then
        -- Fryer animation sequence
        Request("anim", "gestures@f@standing@casual")
        Request("anim", "random@hitch_lift")
        
        TaskPlayAnim(playerPed, "gestures@f@standing@casual", "gesture_hand_down", 
            2.0, 2.0, 1500, 1, 0, true, true, false)
        
        SetTimeout(550, function()
            TriggerEvent(TriggerName("playCustomSound"), "turning-on", 0.85, 
                Config.CustomSoundsVolume.turningOn)
        end)
        
        Wait(1500)
        
        TriggerEvent(TriggerName("playCustomSound"), "frying", cookingTime / 1000, 
            Config.CustomSoundsVolume.frying)
        
        TaskPlayAnim(playerPed, "random@hitch_lift", "idle_f", 
            2.0, 2.0, -1, 1, 0, true, true, false)
        
        SpawnProp("fivecode_fryer", 58866, 0.25, -0.43, -0.08, 93.0, 200.0, 207.99)
        SpawnProp(itemInfo.prop, 58866, 0.25, -0.4, -0.08, 93.0, 200.0, 207.99)
        
        ProgressBars(_U("crafting_progressbar_fryer", itemLabel:lower()), cookingTime)
        
        ClearPedTasks(playerPed)
        ClearProps()
        
    elseif stationType == "grill" then
        -- Grill animation sequence
        Request("anim", "gestures@f@standing@casual")
        Request("anim", "amb@prop_human_bbq@male@idle_a")
        
        TaskPlayAnim(playerPed, "gestures@f@standing@casual", "gesture_hand_down", 
            2.0, 2.0, 1500, 1, 0, true, true, false)
        
        SetTimeout(550, function()
            TriggerEvent(TriggerName("playCustomSound"), "turning-on", 0.85, 
                Config.CustomSoundsVolume.turningOn)
        end)
        
        Wait(1500)
        
        TriggerEvent(TriggerName("playCustomSound"), "cooking-grill", cookingTime / 1000, 
            Config.CustomSoundsVolume.grilling)
        
        TaskPlayAnim(playerPed, "amb@prop_human_bbq@male@idle_a", "idle_b", 
            2.0, 2.0, cookingTime, 1, 0, true, true, false)
        
        SpawnProp("prop_fish_slice_01", 57005, 0.1, 0.02, -0.02, 0.0, -15.0, 140.0)
        
        ProgressBars(_U("crafting_progressbar_grill", itemLabel:lower()), cookingTime)
        
        ClearPedTasks(playerPed)
        ClearProps()
        Wait(750)
        ClearAreaOfObjects(GetEntityCoords(playerPed), 1.0, 0)
        
    elseif stationType == "cuttingTable" then
        -- Cutting table animation sequence
        Request("anim", "mini@repair")
        Request("anim", "anim@amb@business@coc@coc_unpack_cut_left@")
        
        SetTimeout(750, function()
            TriggerEvent(TriggerName("playCustomSound"), "taking-knife", 1250, 
                Config.CustomSoundsVolume.taking_knife)
        end)
        
        TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
            2.0, 2.0, 1250, 1, 0, true, true, false)
        
        ProgressBars(_U("crafting_progressbar_cutting_table_knife"), 1250)
        
        SpawnProp("prop_cleaver", 58866, 0.18, 0.02, 0.051, 70.0, 55.0, 0.0)
        
        TriggerEvent(TriggerName("playCustomSound"), "cutting-table-cut", cookingTime / 1000, 
            Config.CustomSoundsVolume.cutting_table_cut)
        
        TaskPlayAnim(playerPed, "anim@amb@business@coc@coc_unpack_cut_left@", "coke_cut_v4_coccutter", 
            2.0, 2.0, cookingTime, 1, 0, true, true, false)
        
        ProgressBars(_U("crafting_progressbar_cutting_table", itemLabel:lower()), cookingTime)
        
        ClearPedTasks(playerPed)
        ClearProps()
        
    elseif stationType == "drink" or stationType == "slushieMachine" then
        -- Drink machine animation sequence
        Request("anim", "mini@repair")
        Request("anim", "anim@mp_celebration@idles@female")
        Request("anim", "random@hitch_lift")
        
        SetTimeout(1050, function()
            TriggerEvent(TriggerName("playCustomSound"), "turning-on", 1250, 
                Config.CustomSoundsVolume.turningOn)
        end)
        
        TaskPlayAnim(playerPed, "random@hitch_lift", "idle_f", 
            2.0, 2.0, 1250, 1, 0, true, true, false)
        
        ProgressBars(_U("crafting_progressbar_drink_starting"), 1250)
        
        TriggerEvent(TriggerName("playCustomSound"), "drinks", cookingTime / 1000, 
            Config.CustomSoundsVolume.drinks)
        
        TaskPlayAnim(playerPed, "anim@mp_celebration@idles@female", "celebration_idle_f_a", 
            2.0, 2.0, cookingTime, 1, 0, true, true, false)
        
        ProgressBars(_U("crafting_progressbar_drink_filling_cup", itemLabel:lower()), cookingTime)
        
        TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
            2.0, 2.0, 1250, 1, 0, true, true, false)
        
        ProgressBars(_U("crafting_progressbar_drink_taking"), 1250)
        
        ClearPedTasks(playerPed)
        
    elseif stationType == "packingTable" then
        if itemName == "burgershotfoodtray" then
            -- Special food tray packing animation
            local playerCoords = GetEntityCoords(playerPed)
            local playerHeading = GetEntityHeading(playerPed)
            local trayPosition = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 0.55, 0.0)
            local quarterTime = cookingTime / 4
            
            Request("anim", "mini@repair")
            Request("anim", "random@domestic")
            
            -- Place empty tray
            TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
                2.0, 2.0, quarterTime, 1, 0, true, true, false)
            ProgressBars(_U("crafting_progressbar_tray_placing_tray"), quarterTime)
            
            local trayObject = CreateObject(GetHashKey("prop_food_bs_tray_01"), 
                trayPosition.x, trayPosition.y, trayPosition.z - 0.07, true, true, true)
            trayPosition = GetOffsetFromEntityInWorldCoords(trayObject, 0.0, 0.0, 0.0)
            SetEntityHeading(trayObject, playerHeading + 180)
            FreezeEntityPosition(trayObject, true)
            
            -- Place burger
            TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
                2.0, 2.0, quarterTime, 1, 0, true, true, false)
            ProgressBars(_U("crafting_progressbar_tray_placing_burger"), quarterTime)
            
            local burgerObject = CreateObject(GetHashKey("prop_food_bs_burg1"), 
                0.0, 0.0, 0.0, true, true, true)
            AttachEntityToEntity(burgerObject, trayObject, 0, -0.15, -0.06, 0.01, 
                0.0, 0.0, 0.0, false, false, false, true, 2, true)
            FreezeEntityPosition(burgerObject, true)
            
            -- Place soda
            TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
                2.0, 2.0, quarterTime, 1, 0, true, true, false)
            ProgressBars(_U("crafting_progressbar_tray_placing_soda"), quarterTime)
            
            local sodaObject = CreateObject(GetHashKey("ng_proc_sodacup_01a"), 
                trayPosition.x, trayPosition.y, trayPosition.z, true, true, true)
            AttachEntityToEntity(sodaObject, trayObject, 0, 0.15, -0.06, 0.01, 
                0.0, 0.0, 0.0, false, false, false, true, 2, true)
            FreezeEntityPosition(sodaObject, true)
            
            -- Place fries
            TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
                2.0, 2.0, quarterTime, 1, 0, true, true, false)
            ProgressBars(_U("crafting_progressbar_tray_placing_fries"), quarterTime)
            
            local friesObject = CreateObject(GetHashKey("prop_food_bs_chips"), 
                trayPosition.x, trayPosition.y, trayPosition.z, true, true, true)
            AttachEntityToEntity(friesObject, trayObject, 0, 0.07, 0.13, 0.035, 
                -85.0, 195.0, 0.0, false, false, false, true, 2, true)
            FreezeEntityPosition(friesObject, true)
            
            -- Take completed tray
            ClearPedTasks(playerPed)
            TaskPlayAnim(playerPed, "random@domestic", "pickup_low", 
                2.0, 2.0, 450, 52, 0, true, true, false)
            ProgressBars(_U("crafting_progressbar_tray_taking"), 450)
            
            -- Clean up objects
            DeleteEntity(trayObject)
            DeleteEntity(burgerObject)
            DeleteEntity(sodaObject)
            DeleteEntity(friesObject)
        else
            -- Regular packing animation
            Request("anim", "mini@repair")
            TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
                2.0, 2.0, cookingTime, 1, 0, true, true, false)
            ProgressBars(_U("crafting_progressbar_tray_other", itemLabel:lower()), cookingTime)
        end
        
        ClearPedTasks(playerPed)
        
    elseif stationType == "iceMachine" then
        -- Ice machine animation
        Request("anim", "mini@repair")
        
        TriggerEvent(TriggerName("playCustomSound"), "ice", cookingTime / 1000, 
            Config.CustomSoundsVolume.ice)
        
        TaskPlayAnim(playerPed, "mini@repair", "fixing_a_ped", 
            2.0, 2.0, cookingTime, 1, 0, true, true, false)
        
        SpawnProp("v_ind_cfscoop", 58866, 0.2, -0.02, 0.12, 0.0, -40.0, 20.0)
        
        ProgressBars(_U("crafting_progressbat_ice_machine"), cookingTime)
        
        ClearPedTasks(playerPed)
        ClearProps()
    end
end

-- Register cooking menu event handler
RegisterNetEvent(TriggerName("useCookingMenu1"))
AddEventHandler(TriggerName("useCookingMenu1"), function(menuData)
    local stationTitle = menuData.title
    local itemInfo = menuData.info
    local ingredientsData = menuData.ingredients
    local cookingData = menuData.args
    
    CallCallback(TriggerName("checkUtils"), function(isOccupied)
        if not isOccupied then
            GetCookingAmount(cookingData, itemInfo, ingredientsData, stationTitle)
        else
            TriggerEvent(TriggerName("notify"), false, 
                _U("crafting_somebody_using", stationTitle:lower()), 
                Config.NotifyType.error)
        end
    end, {
        info = "checkStatus",
        id = cookingData.args.id
    })
end)