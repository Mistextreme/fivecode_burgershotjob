-- Burger Shot Job - Shared Configuration and Utilities
-- Contains common functions, location loading, and shared data structures

-- Global shared variables
Locations = {}
RestaurantLocation = nil
JobInfo = {}

-- Supported MLO map files
local supportedMapFiles = {
    "gabz",
    "smallo", 
    "gn",
    "king",
    "uniqx"
}

-- Usable food and tray items configuration
local usableItemCategories = {
    food = {
        "burgershotcola", "burgershotcolalight", "burgershotsprunk", "burgershotorang_o_tang",
        "burgershotcolaslushie", "burgershotcolalightslushie", "burgershotsprunkslushie", 
        "burgershotorang_o_tangslushie", "friedfries", "friedonionring", "friedmozzarellastick",
        "classicburger", "classicburgerspicy", "chickenburger", "chickenburgerspicy",
        "fishburger", "obeseburger", "steakburger", "reverseburger", "burgershotsandwich"
    },
    tray = {
        "burgershotfoodtray",
        "burgershotfoodtrayempty"
    }
}

-- Sponge items for cleaning
local cleaningItems = {
    clean = "cleansponge",
    dirty = "dirtysponge"
}

-- Export usable items and sponge items globally
UsableItems = usableItemCategories
SpongeItems = cleaningItems
MapFiles = supportedMapFiles

-- Initialize locations and job information
CreateThread(function()
    -- Load all available map locations
    LoadLocations()
    
    -- Set restaurant location based on configured MLO
    RestaurantLocation = Locations[MloList]
    
    -- Configure job information
    JobInfo = {
        label = "Burger Shot",
        name = Config.JobName,
        society = {
            label = "Burgershot",
            name = "society_burgershot",
            washMoney = Config.Functions.BossMenu.washMoney
        }
    }
end)

-- Load location data from map files
function LoadLocations()
    for _, mapFileName in ipairs(MapFiles) do
        local mapFilePath = string.format("%s/%s.lua", "locations", mapFileName)
        local mapFileContent = LoadResourceFile(GetCurrentResourceName(), mapFilePath)
        
        if mapFileContent then
            -- Extract location data from file content
            local locationDataString = mapFileContent:match("return (.+)")
            if locationDataString then
                local loadLocationData = load("return " .. locationDataString)
                if loadLocationData then
                    Locations[mapFileName] = loadLocationData()
                end
            end
        end
    end
end

-- Generate trigger event names with resource prefix
-- @param eventName: Base event name
-- @return: Formatted trigger name with resource prefix
function TriggerName(eventName)
    return string.format("fivecode_burgershotjob:%s", eventName)
end

-- Debug logging function
-- @param message: Debug message to print
function Debug(message)
    if Config.Debug then
        print(message)
    end
end