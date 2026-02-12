-- Usable Food and Drink Items Configuration
-- Defines the properties, animations, and effects for consumable items

FoodStatus = {
    -- FOOD ITEMS --
    
    -- Fried Fries
    ['friedfries'] = {
        food = {hunger = 25000, useTime = 3500, stress = 5},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_food_bs_chips',
            pos = {xPos = 0.12, yPos = 0.0, zPos = 0.04, xRot = 80.0, yRot = 140.0, zRot = 180.0},
        },
    },
    
    -- Fried Mozzarella Sticks
    ['friedmozzarellastick'] = {
        food = {hunger = 15000, useTime = 2250},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_sandwich_01',
            pos = {xPos = 0.14, yPos = 0.06, zPos = 0.0, xRot = 80.0, yRot = 228.0, zRot = 290.0},
        },
    },
    
    -- Fried Onion Rings
    ['friedonionring'] = {
        food = {hunger = 15000, useTime = 2250},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'fivecode_onionring',
            pos = {xPos = 0.14, yPos = 0.06, zPos = 0.0, xRot = 80.0, yRot = 228.0, zRot = 290.0},
        },
    },
    
    -- Burger Shot Sandwich
    ['burgershotsandwich'] = {
        food = {hunger = 85000, useTime = 5000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_sandwich_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = -50.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Classic Burger
    ['classicburger'] = {
        food = {hunger = 125000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Classic Spicy Burger
    ['classicburgerspicy'] = {
        food = {hunger = 127000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Chicken Burger
    ['chickenburger'] = {
        food = {hunger = 125000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Spicy Chicken Burger
    ['chickenburgerspicy'] = {
        food = {hunger = 127000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Fish Burger
    ['fishburger'] = {
        food = {hunger = 125000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Obese Burger (Large)
    ['obeseburger'] = {
        food = {hunger = 225000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Steak Burger
    ['steakburger'] = {
        food = {hunger = 125000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },
    
    -- Reverse Burger (Bun inside, meat outside)
    ['reverseburger'] = {
        food = {hunger = 105000, useTime = 6000},
        anim = {anim = 'mp_player_inteat@burger', disc = 'mp_player_int_eat_burger'},
        prop = {
            name = 'prop_cs_burger_01',
            pos = {xPos = 0.13, yPos = 0.05, zPos = 0.02, xRot = 110.0, yRot = 16.0, zRot = 60.0},
        },
    },

    -- DRINK ITEMS --
    
    -- Burger Shot Cola
    ['burgershotcola'] = {
        food = {thirst = 125000, useTime = 2500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- Burger Shot Cola Light
    ['burgershotcolalight'] = {
        food = {thirst = 76000, useTime = 2500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- Burger Shot Sprunk
    ['burgershotsprunk'] = {
        food = {thirst = 95000, useTime = 2500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- Burger Shot Orang-O-Tang
    ['burgershotorang_o_tang'] = {
        food = {thirst = 101000, useTime = 2500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- SLUSHIE DRINKS --
    
    -- Burger Shot Cola Slushie
    ['burgershotcolaslushie'] = {
        food = {thirst = 125000, useTime = 4500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- Burger Shot Cola Light Slushie
    ['burgershotcolalightslushie'] = {
        food = {thirst = 76000, useTime = 4500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- Burger Shot Sprunk Slushie
    ['burgershotsprunkslushie'] = {
        food = {thirst = 101000, useTime = 4500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
    
    -- Burger Shot Orang-O-Tang Slushie
    ['burgershotorang_o_tangslushie'] = {
        food = {thirst = 125000, useTime = 4500},
        anim = {anim = 'mp_player_intdrink', disc = 'loop_bottle'},
        prop = {
            name = 'ng_proc_sodacup_01a',
            pos = {xPos = 0.03, yPos = -0.17, zPos = 0.08, xRot = 97.0, yRot = 217.0, zRot = 216.0},
        },
    },
}