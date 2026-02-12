-- Burger Shot Delivery System - Client Side
-- Handles delivery locations and customer interactions for the Burger Shot job

-- Global delivery state variables
local currentDeliveryBlip = nil
local currentCustomerBlip = nil
local isOnDelivery = false
local deliveryLocations = {}

-- Delivery location coordinates with tip eligibility
-- Each location contains coordinates (x, y, z, heading) and tip availability
local deliveryDestinations = {
    -- Downtown Los Santos
    {tip = true, coords = vec4(-60.38, 360.24, 113.06, 240.6)},
    {tip = true, coords = vec4(-311.96, 474.81, 111.82, 124.82)},
    {tip = true, coords = vec4(-418.19, 568.61, 125.06, 155.66)},
    
    -- Vinewood Hills
    {tip = true, coords = vec4(-564.41, 683.68, 146.2, 119.89)},
    {tip = true, coords = vec4(-579.72, 733.57, 184.21, 6.97)},
    {tip = true, coords = vec4(-747.28, 808.25, 215.03, 305.29)},
    {tip = true, coords = vec4(-658.51, 887.05, 229.25, 3.6)},
    
    -- Del Perro / Rockford Hills
    {tip = true, coords = vec4(-1797.79, 469.98, 133.72, 309.13)},
    {tip = true, coords = vec4(-1516.69, 851.75, 181.59, 344.07)},
    {tip = true, coords = vec4(-85.88, 834.73, 235.92, 100.05)},
    
    -- Vespucci / Del Perro
    {tip = true, coords = vec4(-1580.2, -34.07, 57.57, 270.08)},
    {tip = true, coords = vec4(-1467.42, 35.13, 54.54, 352.76)},
    {tip = true, coords = vec4(-1462.44, 64.58, 52.87, 212.62)},
    {tip = true, coords = vec4(-1570.66, 22.65, 59.55, 346.94)},
    {tip = true, coords = vec4(-1629.79, 36.49, 62.94, 330.45)},
    
    -- Morningwood / Richman
    {tip = true, coords = vec4(-1649.58, 248.66, 62.39, 205.29)},
    {tip = true, coords = vec4(-1413.53, 462.28, 109.21, 343.33)},
    {tip = true, coords = vec4(-1906.23, 252.72, 86.25, 119.91)},
    {tip = true, coords = vec4(-2010.88, 445.12, 103.02, 289.99)},
    {tip = true, coords = vec4(-1995.45, 300.89, 91.96, 199.82)},
    
    -- West Los Santos
    {tip = true, coords = vec4(-824.78, 422.15, 92.12, 6.48)},
    {tip = true, coords = vec4(-1848.24, 325.96, 89.73, 48.57)},
    {tip = true, coords = vec4(-1193.08, 563.98, 100.34, 187.5)},
    {tip = true, coords = vec4(-1898.94, 132.65, 81.98, 309.21)},
    {tip = true, coords = vec4(-1937.86, 551.14, 114.83, 73.62)},
    
    -- Pacific Bluffs / Chumash
    {tip = true, coords = vec4(-1873.49, 201.89, 84.29, 129.56)},
    {tip = true, coords = vec4(-1022.67, 586.84, 103.43, 0.88)},
    {tip = true, coords = vec4(-1974.4, 630.83, 122.54, 245.27)},
    {tip = true, coords = vec4(-958.55, 604.51, 105.44, 152.8)},
    {tip = true, coords = vec4(-1943.05, 449.61, 102.93, 98.37)},
    
    -- Burton / Hawick
    {tip = true, coords = vec4(-580.45, 491.57, 108.9, 13.01)},
    {tip = true, coords = vec4(-348.71, 514.74, 120.65, 136.73)},
    {tip = true, coords = vec4(-717.88, 448.8, 106.91, 33.99)},
    {tip = true, coords = vec4(-500.68, 551.87, 120.6, 338.2)},
    {tip = true, coords = vec4(-678.18, 508.71, 113.53, 109.46)},
    
    -- Mirror Park / East Vinewood
    {coords = vec4(228.63, 217.13, 105.55, 140.69)},
    {coords = vec4(646.84, 268.92, 103.24, 67.22)},
    {coords = vec4(328.41, -68.9, 73.04, 162.48)},
    
    -- Downtown / Pillbox Hill
    {coords = vec4(238.51, -412.8, 48.11, 351.09)},
    {coords = vec4(300.05, -579.87, 43.26, 85.51)},
    {coords = vec4(-449.53, -328.75, 34.5, 149.5)},
    
    -- Davis / Strawberry
    {coords = vec4(433.95, -976.28, 30.71, 80.11)},
    {coords = vec4(999.81, -594.04, 59.64, 260.81)},
    {coords = vec4(1388.4, -569.75, 74.5, 112.63)},
    
    -- Vinewood / Mirror Park
    {coords = vec4(928.96, 54.45, 81.1, 63.05)},
    {coords = vec4(-492.9, -17.07, 45.06, 354.97)},
    {coords = vec4(638.3, 1.81, 82.79, 253.19)},
    
    -- Little Seoul / La Mesa
    {coords = vec4(-633.27, -120.79, 39.01, 85.82)},
    {coords = vec4(352.6, -142.82, 66.69, 342.4)},
    {coords = vec4(-348.79, -46.94, 54.42, 340.29)}
}

-- Initialize delivery locations table
deliveryLocations = deliveryDestinations