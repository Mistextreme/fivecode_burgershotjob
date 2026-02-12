Config = {}

--[[ Language ]]--
Config.Locale = 'en' -- en, de, es, cs.

--[[ Framework ]]--
Config.Framework = {
    autoDetect = true,                     --  Automatically finds and sets supported framework on your server.
    type = 'esx',                          --  ESX = 'esx' / QBCore = 'qbcore'.
    export = 'es_extended',                --  ESX = 'es_extended' / QBCore = 'qb-core'.
}

--[[ Inventory ]]--
Config.Inventory = 'auto_detect'         -- auto_detect       - Automatically finds and sets supported inventory on your server.
                                         -- ox                - https://github.com/overextended/ox_inventory.
                                         -- qb/qb-new         - https://github.com/qbcore-framework/qb-inventory.
                                         -- qs                - https://buy.quasar-store.com/package/4770732.
                                         -- ps                - https://github.com/Project-Sloth/ps-inventory.
                                         -- codem             - https://codem.tebex.io/package/5900973.
                                         -- core              - https://forum.cfx.re/t/core-inventory-qb-esx-advanced-grid-based-inventory/4859943.
                                         -- origen            - https://www.origennetwork.store/package/5881161.
                                         -- tgiann            - https://tgiann.tebex.io/package/6273000.
                                         -- esx               - https://github.com/Trsak/esx_inventoryhud.

Config.Images = 'auto_detect'            -- auto_detect       - Automatically finds and sets supported inventory images on your server.
                                         -- ox                - ox_inventory/web/images/.
                                         -- qb/qb-new         - qb-inventory/html/images/.
                                         -- qs                - qs-inventory/html/images/.
                                         -- ps                - ps-inventory/html/images/.
                                         -- codem             - codem-inventory/html/itemimages/.
                                         -- core              - core_inventory/html/img/.
                                         -- origen            - origen_inventory/html/images/.
                                         -- tgiann            - tgiann-inventory/inventory_images/images/.
                                         -- esx               - esx_inventory/html/img/items/.

--[[ Menu ]]--
Config.Menu = 'auto_detect'              -- auto_detect       - Automatically finds and sets supported menu on your server.
                                         -- ox                - https://overextended.github.io/docs.
                                         -- esx               - https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/esx_menu_default.
                                         -- qb                - https://github.com/qbcore-framework/qb-menu.

Config.DialogMenu = 'auto_detect'        -- auto_detect       - Automatically finds and sets supported dialog menu on your server.
                                         -- ox                - https://overextended.github.io/docs.
                                         -- esx               - https://github.com/martintj22/esx_menu_dialog.
                                         -- qb                - https://github.com/qbcore-framework/qb-input.

--[[ Action Menu ]]--
Config.Use3dText = false                 -- Does not work when Config.ActionMenu is set to [ox, qb, q].
Config.ActionMenu = 'auto_detect'        -- auto_detect       - Automatically finds and sets supported action menu on your server.
                                         -- ox                - https://github.com/overextended/ox_target.
                                         -- qb                - https://github.com/qbcore-framework/qb-target.
                                         -- q                 - https://github.com/thelindat/qtarget.
                                         -- helpox            - https://overextended.dev/ox_lib/Modules/Interface/Client/textui#libshowtextui.
                                         -- helpqb            - https://docs.qbcore.org/qbcore-documentation/qb-core/drawtext.
                                         -- helpesx           - https://esx-brasil.github.io/es_extended/client/functions/showhelpnotification.

--[[ ProgressBar ]]--
Config.ProgressBar = 'auto_detect'       -- auto_detect       - Automatically finds and sets supported progressbar on your server. 
                                         -- none              - No ProgressBar.
                                         -- ox                - https://overextended.github.io/docs.
                                         -- qb                - https://github.com/qbcore-framework/progressbar.
                                         -- qs                - https://github.com/quasar-scripts/progressbar.
                                         -- progressBars      - https://forum.cfx.re/t/release-progress-bars-1-0-standalone/526287/4.

--[[ Skin Selector ]]--
Config.SkinSelector = 'auto_detect'      -- auto_detect       - Automatically finds and sets supported skin selector on your server.
                                         -- esx               - https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/esx_skin, https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/skinchanger.
                                         -- qb                - https://github.com/qbcore-framework/qb-clothing.
                                         -- fivem             - https://forum.cfx.re/t/release-fivem-appearance/2438537.
                                         -- ox                - https://github.com/overextended/ox_appearance.
                                         -- illenium          - https://github.com/iLLeniumStudios/illenium-appearance.
                                         -- bl                - https://github.com/Byte-Labs-Studio/bl_appearance.
                                         -- rcore             - https://store.rcore.cz/package/6430968.
                                         -- tgiann            - https://tgiann.tebex.io/package/6271462.
                                         -- qs                - https://www.quasar-store.com/scripts/appearance.

--[[ Boss Menu/Society ]]--
Config.BossMenuSociety = 'auto_detect'   -- auto_detect       - Automatically finds and sets supported help notify on your server. 
                                         -- renewed-banking   - https://github.com/Renewed-Scripts/Renewed-Banking.
                                         -- okokBanking       - https://okok.tebex.io/package/5126428.
                                         -- tgg-banking       - https://teamsgg.dev/scripts/banking.
                                         -- crm-banking       - https://corem.tebex.io/package/6488919.
                                         -- fd_banking        - https://felis.gg/product/banking.
                                         -- esx_society       - https://github.com/esx-framework/esx_society.
                                         -- qb-management     - https://github.com/qbcore-framework/qb-management.
                                         -- qb-banking        - https://github.com/qbcore-framework/qb-banking.

--[[ MLO ]]--
Config.MLO = 'gn'               -- auto_detect       - Automatically finds and sets supported MLO on your server.
                                         -- gabz              - https://fivem.gabzv.com.
                                         -- smallo            - https://www.gta5-mods.com/maps/gtaiv-burgershot-interior-sp-and-fivem.
                                         -- uniqx             - https://www.gta5-mods.com/maps/mlo-burgershot-2023-add-on-sp-fivem.
                                         -- gn                - https://fivem.gn.studio/package/4841796.
                                         -- king              - https://kingmaps.net/products/6167902.

--[[ Notifications ]]--
Config.HelpNotify = 'auto_detect'        -- auto_detect       - Automatically finds and sets supported help notify on your server. 
                                         -- esx               - https://esx-brasil.github.io/es_extended/client/functions/showhelpnotification/.
                                         -- ox                - https://overextended.dev/ox_lib/Modules/Interface/Client/textui#libshowtextui.
                                         -- qb                - https://docs.qbcore.org/qbcore-documentation/qb-core/drawtext.

Config.Notify = 'auto_detect'            -- auto_detect, ox, esx, qb.
Config.NotifyType = {success = 'success', info = 'info', error = 'error'}
Config.Sounds = true

--[[ Logs ]]--
Config.TimeFormat = '%H:%M'   -- Time format used in discord logs - https://www.lua.org/pil/22.1.html.
Config.DiscordLogs = {
    Icon = 'https://imgur.com/OrnXItg.png',   -- Icon that will appear in discord logs.
    ServerName = 'Fivecode Scripts',          -- Name that will appear in discord logs.
    -- You can set discord webhooks in sv_utils.lua.
}

--[[ Main ]]--
Config.JobName = 'burgershot'                        -- Name of the job. Example: /setjob [name].
Config.UI = {cashRegister = true, foodMenu = true}   -- Enables custom UI for cash register and food menu if true.
Config.UseCustomSounds = true                        -- Plays custom sounds during cooking, paying, etc., if true.
Config.NpcEmployeeStock = true                       -- NPCs sell only stocked food items if true.
Config.RemoveTrayUponUse = false                     -- Remove tray object upon opening it and getting tray items.
Config.DeliveryItem = true                           -- Requires delivering specific items and amount to customers if true.
Config.CustomBilling = false                         -- Allows billing menu customization in 'cl_utils.lua' (not for orders).
Config.MaxCookingQuantity = 10                       -- Maximum items a player can cook at once.
Config.Keys = {
    exit = 38,        -- [E] Exit chair, toilet or sink.
    openTable = 74,   -- [H] Open table while sitting on a chair.
    openTray = 249,   -- [N] Open tray while sitting on a chair.
    placingTray = {
        place = 38,      -- [E] Place tray on the ground.
        exit = 348,      -- [SCROLLPRESS] Exit placing tray.
        rotateL = 181,   -- [SCROLLUP] Rotate position of the tray to left side.
        rotateR = 180,   -- [SCROLLDOWN] Rotate position of the tray to right side.
    }
}
Config.CustomSoundsVolume = {   -- Volume of sound effects while cooking, paying etc.
    -- Cooking
    turningOn = 0.55,
    taking_knife = 0.55,
    cutting_table_cut = 0.55,
    frying = 0.55,
    grilling = 0.55,
    drinks = 0.55,
    ice = 0.55,
    -- Paying
    cash_register = 0.55,
}
Config.Functions = {
    Use = {
        duty = true,
        lockerRoom = true,
        cashRegisters = true,
        menuList = true,
        crafting = {
            fryer = true,
            grill = true,
            cuttingTable = true,
            drinks = true,
            packingTable = true,
            iceMachine = true,
            slushieMachine = true,
        },
    },

    Blip = {
        use = true,
		info = {id = 438, color = 64, size = 0.8},
		title = 'Burger Shot',
    },

    BossMenu = {
        use = true,
        washMoney = true,                        -- Allow money laundering through the boss menu.
        hireDistance = 5,                        -- Maximum distance (in meters) to hire employees.
        grades = {'boss', 'underboss', 'ceo'},   -- Ranks with access to boss functions.
        manage = {
            job = 'unemployed',        -- Default job for fired employees.
            jobLabel = 'Unemployed',   -- Label for the default job.
            grade = 0,                 -- Starting job grade.
            maxGrade = 4,              -- Maximum job grade.
        },
    },

    SupplyShop = {
        use = true,
        npcPed = 'a_m_m_afriamer_01',
        payment = {cash = true, bank = true},   -- Allowed payment methods (cash and/or bank).
        Blip = {                                -- Only visible to Burger Shot employees.
            use = true,
            info = {id = 59, color = 25, size = 0.8},
            title = '%s Supplies', 
        },
    },

    Garage = {
        use = true,
        putPlayerIntoVehicle = true,   -- Automatically place the player into the vehicle upon retrieval.
        saveDistance = 5,              -- Maximum distance (in meters) from the garage to save/store a vehicle.
        vehicles = {
            ['Speedo'] = {
                grade = 1,
                spawnName = 'speedo4',
                vehicleType = 'Delivery Van',
                image = 'speedo4.png',
            },
        },
    },

    LockerRoom = {
        use = true,
        outfits = {
            ['Work outfit'] = {   -- Name of the outfit.
                grade = 0,        -- Minimum job grade required to use this outfit.
                male = {
                    tshirt_1 = 15,      tshirt_2 = 0,
                    torso_1 = 281,      torso_2 = 1,
                    bproof_1 = 0,       bproof_2 = 0,
                    decals_1 = 0,       decals_2 = 0,
                    arms = 6,
                    pants_1 = 10,       pants_2 = 2,
                    shoes_1 = 27,       shoes_2 = 0,
                    bag_1 = 0,          bag_2 = 0,
                    helmet_1 = -1,      helmet_2 = 0,
                    mask_1 = 0,         mask_2 = 0,
                    chain_1 = 0,        chain_2 = 0,
                    ears_1 = -1,        ears_2 = 0,
                    glasses_1 = -1,     glasses_2 = 0,
                    watches_1 = -1,     watches_2 = 0,
                    bracelets_1 = -1,   bracelets_2 = 0,
                },
                female = {
                    tshirt_1 = 15,      tshirt_2 = 0,
                    torso_1 = 294,      torso_2 = 1,
                    bproof_1 = 0,       bproof_2 = 0,
                    decals_1 = 0,       decals_2 = 0,
                    arms = 1,
                    pants_1 = 1,        pants_2 = 1,
                    shoes_1 = 26,       shoes_2 = 0,
                    bag_1 = 0,          bag_2 = 0,
                    helmet_1 = -1,      helmet_2 = 0,
                    mask_1 = 0,         mask_2 = 0,
                    chain_1 = 0,        chain_2 = 0,
                    ears_1 = -1,        ears_2 = 0,
                    glasses_1 = -1,     glasses_2 = 0,
                    watches_1 = -1,     watches_2 = 0,
                    bracelets_1 = -1,   bracelets_2 = 0,
                }
            },
        },
    },

    PoliceAlerts = {
        use = true,
        cooldown = 2,   -- Cooldown time (in minutes) before the alert can be triggered again.
    },

    NpcEmployee = {
        use = true,
        npcPed = 'csb_burgerdrug',
        payment = {cash = true, bank = true},   -- Allowed payment methods (cash and/or bank).
        playersOnDuty = 0,                      -- If the number of players on duty exceeds this value, the NPC employee will stop taking orders.
    },

    Delivery = {
        use = true,
        reward = {min = 250, max = 500},   -- Delivery reward (50% to player, 50% to society account).
        tip = {min = 50, max = 100},       -- Customer tip (100% to player, based on delivery location).
        cooldown = 5,                      -- Cooldown time (in minutes) before the player can start a new delivery mission.
    },

    Missions = {
        use = true,
        reward = {min = 50, max = 200},   -- Set reward range, or disable rewards by setting this to false [reward = false].
        cooldown = 2,                     -- Time (in minutes) a player must wait before starting a new mission.
        playerCount = 3,                  -- Maximum number of players that can do a mission at the same time.
    },

    Trash = {
        use = true,
        delete = true,   -- Automatically delete all items in the trash when the script stops or restarts.
        TrashInfo = {slots = 25, weight = 100000},
    },

    Storage = {
        use = true,
        company = {use = true, slots = 50, weight = 100000},
        personal = {use = true, slots = 15, weight = 15000},
    },

    HotTables = {use = true, HotTableInfo = {slots = 25, weight = 100000}},
    TablesAndChairs = {use = true, TableInfo = {slots = 20, weight = 20000}},
    BathRoom = {use = true, pants = {check = true, male = 14, female = 15}},
    Dog = {use = true, npcPed = 'a_c_shepherd', removeStress = true},
}