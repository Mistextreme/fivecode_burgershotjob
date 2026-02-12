-- Burger Shot Job - Main Client Logic
-- Handles initialization of all interactive elements and restaurant systems

-- Global state variables
local isBusy = false
local isMovementDisabled = false
local currentTargetId = nil
local restaurantTables = {}
local employeeNpcEntities = {}

-- Main initialization thread
CreateThread(function()
    local restaurantData = RestaurantLocation
    
    -- Validate that restaurant location data exists
    if not restaurantData then
        print("^1[ERROR]^0 - MLO detection: No map file loaded. Make sure the configured map exists and is supported by auto-detection.")
        return
    end
    
    -- Wait for player job information to be available
    while true do
        local playerJobInfo = GetPlayerJobInfo()
        if playerJobInfo then
            break
        end
        Wait(250)
    end
    
    -- Initialize all restaurant systems
    InitializeRestaurantBlip(restaurantData)
    InitializeDutySystem(restaurantData)
    InitializeBossMenu(restaurantData)
    InitializeLockerRoom(restaurantData)
    InitializeStorageSystem(restaurantData)
    InitializeGarageSystem(restaurantData)
    InitializeCraftingStations(restaurantData)
    InitializeBathroomFacilities(restaurantData)
    InitializeTablesAndChairs(restaurantData)
    InitializeCashRegisters(restaurantData)
    InitializeFoodTrays()
    InitializePoliceAlerts(restaurantData)
    InitializeDeliverySystem(restaurantData)
    InitializeMissionSystem(restaurantData)
    InitializeTrashSystem(restaurantData)
    InitializeHotTables(restaurantData)
    InitializeSupplyShop(restaurantData)
    InitializeDogInteraction(restaurantData)
    InitializeNpcEmployee(restaurantData)
    InitializeMenuList(restaurantData)
    LoadSpecialObjects()
end)

-- Initialize restaurant blip on map
function InitializeRestaurantBlip(restaurantData)
    if not Config.Functions.Blip.use then return end
    
    CreateBlip({
        blip = Config.Functions.Blip,
        coords = restaurantData.Blip.coords
    })
end

-- Initialize duty clock-in/out system
function InitializeDutySystem(restaurantData)
    if not Config.Functions.Use.duty then return end
    
    ActionMenus(
        restaurantData.DutySystem.coords,
        "dutyMenu",
        {
            jobName = JobInfo.name,
            labelName = JobInfo.label,
            id = "duty"
        },
        {
            icon = restaurantData.DutySystem.target.icon,
            label = _U("interact_duty"),
            size = restaurantData.DutySystem.target.size
        }
    )
end

-- Initialize boss management menu
function InitializeBossMenu(restaurantData)
    if not Config.Functions.BossMenu.use then return end
    
    ActionMenus(
        restaurantData.BossMenu.coords,
        "bossMenu",
        {
            jobName = JobInfo.name,
            labelName = JobInfo.label,
            label = JobInfo.society.label,
            name = JobInfo.society.name,
            washMoney = JobInfo.society.washMoney,
            hireDistance = Config.Functions.BossMenu.hireDistance,
            id = "boss"
        },
        {
            icon = restaurantData.BossMenu.target.icon,
            label = _U("interact_bossmenu"),
            size = restaurantData.BossMenu.target.size
        }
    )
end

-- Initialize employee locker room
function InitializeLockerRoom(restaurantData)
    if not Config.Functions.LockerRoom.use then return end
    
    ActionMenus(
        restaurantData.LockerRoom.coords,
        "lockerMenu",
        {
            jobName = JobInfo.name,
            labelName = JobInfo.label,
            outfitInfo = outfitInfo,
            outfits = Config.Functions.LockerRoom.outfits,
            duty = Config.Functions.Use.duty,
            id = "locker"
        },
        {
            icon = restaurantData.LockerRoom.target.icon,
            label = _U("interact_lockerroom"),
            size = restaurantData.LockerRoom.target.size
        }
    )
end

-- Initialize storage system (company and personal)
function InitializeStorageSystem(restaurantData)
    if not Config.Functions.Storage.use then return end
    
    ActionMenus(
        restaurantData.Storage.coords,
        "storageMenu",
        {
            jobName = JobInfo.name,
            labelName = JobInfo.label,
            name = JobInfo.society.name,
            label = JobInfo.society.label,
            job = JobInfo.name,
            duty = Config.Functions.Use.duty,
            company = {
                use = Config.Functions.Storage.company.use,
                slots = Config.Functions.Storage.company.slots,
                weight = Config.Functions.Storage.company.weight
            },
            personal = {
                use = Config.Functions.Storage.personal.use,
                slots = Config.Functions.Storage.personal.slots,
                weight = Config.Functions.Storage.personal.weight
            },
            id = "storage"
        },
        {
            icon = restaurantData.Storage.target.icon,
            label = _U("interact_storage"),
            size = restaurantData.Storage.target.size
        }
    )
end

-- Initialize vehicle garage system
function InitializeGarageSystem(restaurantData)
    if not Config.Functions.Garage.use then return end
    
    ActionMenus(
        restaurantData.Garage.coords,
        "garageMenu",
        {
            jobName = JobInfo.name,
            labelName = JobInfo.label,
            vehicles = Config.Functions.Garage.vehicles,
            spawnLocations = restaurantData.Garage.spawn,
            putPlayerIntoVehicle = Config.Functions.Garage.putPlayerIntoVehicle,
            saveDistance = Config.Functions.Garage.saveDistance,
            duty = Config.Functions.Use.duty,
            id = "garage"
        },
        {
            icon = restaurantData.Garage.target.icon,
            label = _U("interact_garage"),
            size = restaurantData.Garage.target.size
        }
    )
end

-- Initialize all food preparation stations
function InitializeCraftingStations(restaurantData)
    local craftingStations = {
        {
            enabled = Config.Functions.Use.crafting.fryer,
            positions = restaurantData.Crafting.Fryer.Positions,
            food = restaurantData.Crafting.Fryer.Food,
            type = "fryer",
            title = _U("crafting_fryer_title"),
            icon = "fas fa-hand",
            label = _U("interact_fryer")
        },
        {
            enabled = Config.Functions.Use.crafting.grill,
            positions = restaurantData.Crafting.Grill.Positions,
            food = restaurantData.Crafting.Grill.Food,
            type = "grill",
            title = _U("crafting_grill_title"),
            icon = "fas fa-hand",
            label = _U("interact_grill")
        },
        {
            enabled = Config.Functions.Use.crafting.cuttingTable,
            positions = restaurantData.Crafting.CuttingTable.Positions,
            food = restaurantData.Crafting.CuttingTable.Food,
            type = "cuttingTable",
            title = _U("crafting_cutting_table_title"),
            icon = "fas fa-hand",
            label = _U("interact_cuttingtable")
        },
        {
            enabled = Config.Functions.Use.crafting.drinks,
            positions = restaurantData.Crafting.Drinks.Positions,
            food = restaurantData.Crafting.Drinks.Food,
            type = "drink",
            title = _U("crafting_drinks_title"),
            icon = "fas fa-hand",
            label = _U("interact_drinks")
        },
        {
            enabled = Config.Functions.Use.crafting.packingTable,
            positions = restaurantData.Crafting.PackingTable.Positions,
            food = restaurantData.Crafting.PackingTable.Food,
            type = "packingTable",
            title = _U("crafting_packing_table_title"),
            icon = "fas fa-hand",
            label = _U("interact_packingtable")
        },
        {
            enabled = Config.Functions.Use.crafting.iceMachine,
            positions = restaurantData.Crafting.IceMachine.Positions,
            food = restaurantData.Crafting.IceMachine.Food,
            type = "iceMachine",
            title = _U("crafting_ice_machine_title"),
            icon = "fas fa-hand",
            label = _U("interact_icemachine")
        },
        {
            enabled = Config.Functions.Use.crafting.slushieMachine,
            positions = restaurantData.Crafting.SlushieMachine.Positions,
            food = restaurantData.Crafting.SlushieMachine.Food,
            type = "slushieMachine",
            title = _U("crafting_slushie_machine_title"),
            icon = "fas fa-hand",
            label = _U("interact_slushymachine")
        }
    }
    
    -- Create action menus for each enabled crafting station
    for _, station in pairs(craftingStations) do
        if station.enabled then
            for stationId, stationData in pairs(station.positions) do
                ActionMenus(
                    stationData.coords,
                    "useCookingMenu",
                    {
                        type = station.type,
                        jobName = JobInfo.name,
                        coords = stationData.coords,
                        pedPos = stationData.pedPos,
                        food = station.food,
                        title = station.title,
                        id = stationId .. "-" .. station.type,
                        duty = Config.Functions.Use.duty
                    },
                    {
                        icon = station.icon,
                        label = station.label,
                        size = stationData.size
                    }
                )
            end
        end
    end
end

-- Initialize bathroom facilities (toilets and sinks)
function InitializeBathroomFacilities(restaurantData)
    if not Config.Functions.BathRoom.use then return end
    
    local toiletIcon = {icon = "fas fa-hand", label = _U("interact_toilet")}
    local sinkIcon = {icon = "fas fa-hand", label = _U("interact_sink")}
    
    -- Initialize toilets
    for toiletId, toiletData in pairs(restaurantData.BathRooms.Toilets) do
        local jobRequirement = toiletData.job and JobInfo.name or false
        
        ActionMenus(
            toiletData.coords,
            "useToiletMenu",
            {
                jobName = jobRequirement,
                coords = toiletData.coords,
                pedPos = toiletData.pedPos,
                pants = Config.Functions.BathRoom.pants,
                poop = not toiletData.poop,
                pee = not toiletData.pee,
                id = toiletId .. "-toilet"
            },
            {
                icon = toiletIcon.icon,
                label = toiletIcon.label,
                size = toiletData.size
            }
        )
    end
    
    -- Initialize sinks
    for sinkId, sinkData in pairs(restaurantData.BathRooms.Sinks) do
        local jobRequirement = sinkData.job and JobInfo.name or false
        
        ActionMenus(
            sinkData.coords,
            "useSinkMenu",
            {
                jobName = jobRequirement,
                coords = sinkData.coords,
                pedPos = sinkData.pedPos,
                id = sinkId .. "-sink"
            },
            {
                icon = sinkIcon.icon,
                label = sinkIcon.label,
                size = sinkData.size
            }
        )
    end
end

-- Initialize customer seating (tables and chairs)
function InitializeTablesAndChairs(restaurantData)
    if not Config.Functions.TablesAndChairs.use then return end
    
    local tableIcon = {icon = "fas fa-hand", label = _U("interact_table")}
    local chairIcon = {icon = "fas fa-hand", label = _U("interact_chair")}
    
    -- Initialize tables
    for tableId, tableData in pairs(restaurantData.TablesAndChairs.Tables) do
        restaurantTables[tableId] = {
            jobName = nil,
            coords = tableData.coords,
            leavePos = tableData.leavePos,
            slots = Config.Functions.TablesAndChairs.TableInfo.slots,
            weight = Config.Functions.TablesAndChairs.TableInfo.weight,
            id = tableId
        }
        
        ActionMenus(
            tableData.coords,
            "useTable",
            restaurantTables[tableId],
            {
                icon = tableIcon.icon,
                label = tableIcon.label,
                size = tableData.size
            }
        )
    end
    
    -- Initialize chairs
    for chairId, chairData in pairs(restaurantData.TablesAndChairs.Chairs) do
        ActionMenus(
            chairData.coords,
            "useChairMenu",
            {
                jobName = nil,
                coords = chairData.coords,
                leavePos = chairData.leavePos,
                id = chairId .. "-chair"
            },
            {
                icon = chairIcon.icon,
                label = chairIcon.label,
                size = chairData.size
            }
        )
    end
end

-- Initialize cash register systems
function InitializeCashRegisters(restaurantData)
    if not Config.Functions.Use.cashRegisters then return end
    
    local cashRegisterIcon = {icon = "fas fa-hand", label = _U("interact_cashregister")}
    
    for registerId, registerData in pairs(restaurantData.CashRegisters.Registers) do
        local menuType = Config.CustomBilling and "customBilling" or "useCashRegisterMenu"
        
        ActionMenus(
            registerData.coords,
            menuType,
            {
                jobName = nil,
                job = JobInfo.name,
                coords = registerData.coords,
                id = registerId
            },
            {
                icon = cashRegisterIcon.icon,
                label = cashRegisterIcon.label,
                size = registerData.size
            }
        )
    end
end

-- Initialize food tray interactions
function InitializeFoodTrays()
    AddModel("prop_food_bs_tray_02", "foodTrayMenu", _U("interact_foodtray"), 2.0)
    AddModel("prop_food_bs_tray_01", "foodTrayMenu", _U("interact_foodtray"), 2.0)
end

-- Initialize police alert buttons
function InitializePoliceAlerts(restaurantData)
    if not Config.Functions.PoliceAlerts.use then return end
    
    local policeAlertIcon = {icon = "fas fa-hand", label = _U("interact_policealert")}
    
    for alertId, alertData in pairs(restaurantData.PoliceAlerts.Alerts) do
        ActionMenus(
            alertData.coords,
            "usePoliceAlertMenu",
            {
                jobName = JobInfo.name,
                coords = alertData.coords,
                cooldown = Config.Functions.PoliceAlerts.cooldown,
                id = alertId
            },
            {
                icon = policeAlertIcon.icon,
                label = policeAlertIcon.label,
                size = alertData.size
            }
        )
    end
end

-- Initialize delivery mission system
function InitializeDeliverySystem(restaurantData)
    if not Config.Functions.Delivery.use then return end
    
    local deliveryIcon = {icon = "fas fa-hand", label = _U("interact_delivery")}
    
    for deliveryId, deliveryData in pairs(restaurantData.Delivery.StartDelivery) do
        ActionMenus(
            deliveryData.coords,
            "useDeliveryMenu",
            {
                jobName = JobInfo.name,
                coords = deliveryData.coords,
                pedPos = deliveryData.pedPos,
                reward = Config.Functions.Delivery.reward,
                tip = Config.Functions.Delivery.tip,
                cooldown = Config.Functions.Delivery.cooldown,
                object = deliveryData.object,
                items = restaurantData.MenuList.Items,
                id = deliveryId,
                duty = Config.Functions.Use.duty
            },
            {
                icon = deliveryIcon.icon,
                label = deliveryIcon.label,
                size = deliveryData.size
            }
        )
    end
end

-- Initialize cleaning mission system
function InitializeMissionSystem(restaurantData)
    if not Config.Functions.Missions.use then return end
    
    local missionIcon = {icon = "fas fa-hand", label = _U("interact_mission")}
    
    for missionId, missionData in pairs(restaurantData.Missions.StartMission) do
        ActionMenus(
            missionData.coords,
            "useMissionMenu",
            {
                jobName = JobInfo.name,
                coords = missionData.coords,
                pedPos = missionData.pedPos,
                storagePos = missionData.storagePos,
                dirtySpots = restaurantData.Missions.DirtySpots,
                reward = Config.Functions.Missions.reward,
                playerCount = Config.Functions.Missions.playerCount,
                cooldown = Config.Functions.Missions.cooldown,
                id = missionId,
                duty = Config.Functions.Use.duty
            },
            {
                icon = missionIcon.icon,
                label = missionIcon.label,
                size = missionData.size
            }
        )
    end
end

-- Initialize trash disposal system
function InitializeTrashSystem(restaurantData)
    if not Config.Functions.Trash.use then return end
    
    local trashIcon = {icon = "fas fa-hand", label = _U("interact_trash")}
    
    for trashId, trashData in pairs(restaurantData.Trash.Positions) do
        ActionMenus(
            trashData.coords,
            "useTrash",
            {
                jobName = nil,
                coords = trashData.coords,
                slots = Config.Functions.Trash.TrashInfo.slots,
                weight = Config.Functions.Trash.TrashInfo.weight,
                delete = Config.Functions.Trash.delete,
                id = trashId
            },
            {
                icon = trashIcon.icon,
                label = trashIcon.label,
                size = trashData.size
            }
        )
    end
end

-- Initialize hot food serving tables
function InitializeHotTables(restaurantData)
    if not Config.Functions.HotTables.use then return end
    
    local hotTableIcon = {icon = "fas fa-hand", label = _U("interact_hottable")}
    
    for hotTableId, hotTableData in pairs(restaurantData.HotTables.Positions) do
        ActionMenus(
            hotTableData.coords,
            "useHotTable",
            {
                jobName = JobInfo.name,
                coords = hotTableData.coords,
                slots = Config.Functions.HotTables.HotTableInfo.slots,
                weight = Config.Functions.HotTables.HotTableInfo.weight,
                id = hotTableId
            },
            {
                icon = hotTableIcon.icon,
                label = hotTableIcon.label,
                size = hotTableData.size
            }
        )
    end
end

-- Initialize supply purchasing system
function InitializeSupplyShop(restaurantData)
    if not Config.Functions.SupplyShop.use then return end
    
    local shopIcon = {icon = "fas fa-hand", label = _U("interact_shop")}
    local shopBlip = nil
    
    for shopId, shopData in pairs(restaurantData.SupplyShop.Positions) do
        -- Create NPC for supply shop
        local npcData = {
            coords = vec4(shopData.coords.x, shopData.coords.y, shopData.coords.z, shopData.coords.w),
            npc = {
                ped = Config.Functions.SupplyShop.npcPed,
                anim = "WORLD_HUMAN_AA_SMOKE"
            }
        }
        CreateNpc(npcData)
        
        -- Create action menu for supply shop
        ActionMenus(
            shopData.coords,
            "useShop",
            {
                jobName = JobInfo.name,
                coords = shopData.coords,
                items = restaurantData.SupplyShop.Items,
                payment = Config.Functions.SupplyShop.payment,
                id = shopId
            },
            {
                icon = shopIcon.icon,
                label = shopIcon.label,
                size = shopData.size
            }
        )
        
        -- Initialize supply shop blip system (only visible to employees)
        if Config.Functions.SupplyShop.Blip.use then
            CreateThread(function()
                while true do
                    local checkInterval = 10000
                    local currentPlayerJob = GetPlayerJobInfo().name
                    
                    if JobInfo.name == currentPlayerJob then
                        if not shopBlip then
                            ManageShopBlip("add")
                        end
                    else
                        if shopBlip then
                            ManageShopBlip("remove")
                        end
                    end
                    
                    Wait(checkInterval)
                end
            end)
            
            function ManageShopBlip(action)
                if action == "remove" then
                    RemoveBlip(shopBlip)
                    shopBlip = nil
                else
                    local blipConfig = Config.Functions.SupplyShop.Blip
                    blipConfig.title = string.format(blipConfig.title, JobInfo.label)
                    
                    shopBlip = CreateBlip({
                        blip = blipConfig,
                        coords = shopData.coords,
                        sendBack = true
                    })
                end
            end
        end
    end
end

-- Initialize dog interaction for stress relief
function InitializeDogInteraction(restaurantData)
    if not Config.Functions.Dog.use then return end
    
    local dogIcon = {icon = "fas fa-hand", label = _U("interact_dog")}
    
    for dogId, dogData in pairs(restaurantData.Dog.Positions) do
        -- Create dog NPC
        local npcData = {
            coords = vec4(dogData.coords.x, dogData.coords.y, dogData.coords.z, dogData.coords.w),
            npc = {
                ped = Config.Functions.Dog.npcPed,
                anim = "WORLD_DOG_SITTING_SHEPHERD"
            }
        }
        CreateNpc(npcData)
        
        -- Create action menu for dog interaction
        ActionMenus(
            dogData.coords,
            "useDog",
            {
                jobName = nil,
                coords = dogData.coords,
                pedPos = dogData.pedPos,
                removeStress = Config.Functions.Dog.removeStress,
                id = dogId
            },
            {
                icon = dogIcon.icon,
                label = dogIcon.label,
                size = dogData.size
            }
        )
    end
end

-- Initialize NPC employee for customer service
function InitializeNpcEmployee(restaurantData)
    if not Config.Functions.NpcEmployee.use then return end
    
    local npcEmployeeIcon = {icon = "fas fa-hand", label = _U("interact_npcemployee")}
    
    for npcId, npcData in pairs(restaurantData.NpcEmployee.Positions) do
        -- Create employee NPC
        local employeeNpcData = {
            sendBack = true,
            coords = vec4(npcData.coords.x, npcData.coords.y, npcData.coords.z, npcData.coords.w),
            npc = {
                ped = Config.Functions.NpcEmployee.npcPed,
                anim = "WORLD_HUMAN_STAND_MOBILE"
            }
        }
        local createdEmployeeNpc = CreateNpc(employeeNpcData)
        employeeNpcEntities = createdEmployeeNpc
        
        -- Create action menu for NPC employee
        ActionMenus(
            npcData.coords,
            "useNpcEmployee",
            {
                jobName = nil,
                npc = employeeNpcEntities,
                coords = npcData.coords,
                hotTablePos = npcData.hotTablePos,
                playersOnDuty = Config.Functions.NpcEmployee.playersOnDuty,
                items = restaurantData.MenuList.Items,
                payment = Config.Functions.NpcEmployee.payment,
                id = npcId
            },
            {
                icon = npcEmployeeIcon.icon,
                label = npcEmployeeIcon.label,
                size = npcData.size
            }
        )
    end
end

-- Initialize menu display boards
function InitializeMenuList(restaurantData)
    if not Config.Functions.Use.menuList then return end
    
    local menuListIcon = {icon = "fas fa-hand", label = _U("interact_menulist")}
    
    for menuId, menuData in pairs(restaurantData.MenuList.Positions) do
        ActionMenus(
            menuData.coords,
            "useMenuList",
            {
                jobName = nil,
                coords = menuData.coords,
                items = restaurantData.MenuList.Items,
                id = menuId
            },
            {
                icon = menuListIcon.icon,
                label = menuListIcon.label,
                size = menuData.size
            }
        )
    end
end