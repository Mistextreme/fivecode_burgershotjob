--[[ Smallo Burger Shot MLO - https://www.gta5-mods.com/maps/gtaiv-burgershot-interior-sp-and-fivem ]]--

return {
	Blip = {
		coords = vec3(-1184.79, -885.14, 14.03),
	},
	
	DutySystem = {
		coords = vec4(-1194.07, -898.5, 14.79, 125.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.2, y = 1.2, z = 1.2},
		},
	},

	BossMenu = {
		coords = vec4(-1192.65, -897.5, 14.79, 125.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.2, y = 1.2, z = 1.2},
		},
	},

	LockerRoom = {
		coords = vector4(-1187.89, -899.13, 13.99, 125.0),
		target = {
			icon = 'fas fa-tshirt',
			size = {x = 0.4, y = 3.9, z = 1.85},
		},
	},

	Storage = {
		coords = vec4(-1205.01, -893.73, 13.99, 214.0),
		target = {
			icon = 'fas fa-box',
			size = {x = 0.4, y = 2.8, z = 1.85},
		},
	},

	Garage = {
		spawn = {
			vec4(-1169.12, -894.24, 13.68, 34.20),
			vec4(-1163.80, -891.09, 13.71, 124.18),
			vec4(-1166.15, -888.30, 13.69, 122.15),
		},
		coords = vec4(-1178.26, -893.01, 13.90, 214.0),
		target = {
			icon = 'fas fa-car',
			size = {x = 0.8, y = 0.7, z = 1.85},
		},
	},

	BathRooms = {
		Toilets = {
            {coords = vec4(-1199.88, -886.32, 13.55, 34.56), pedPos = vec4(-1199.58, -886.81, 13.99, 220.0), size = {x = 0.45, y = 0.7, z = 0.95}},
            {coords = vec4(-1202.12, -887.83, 13.55, 34.56), pedPos = vec4(-1201.85, -888.34, 13.99, 220.0), size = {x = 0.45, y = 0.7, z = 0.95}},
		},
		Sinks = {
            -- Bathroom
            {coords = vec4(-1200.77, -889.02, 13.55, 34.0), pedPos = vec4(-1201.20, -889.34, 13.99, 309.0), size = {x = 0.48, y = 0.6, z = 1.05}},
            {coords = vec4(-1198.53, -887.50, 13.55, 34.0), pedPos = vec4(-1198.99, -887.84, 13.99, 309.0), size = {x = 0.48, y = 0.6, z = 1.05}},

            -- Kitchen
            {coords = vec4(-1196.99, -902.20, 13.55, 214.0), pedPos = vec4(-1197.37, -901.71, 13.99, 214.0), size = {x = 0.68, y = 0.6, z = 1.05}, job = true},
            {coords = vec4(-1198.14, -902.97, 13.55, 214.0), pedPos = vec4(-1198.50, -902.46, 13.99, 214.0), size = {x = 0.68, y = 0.6, z = 1.05}, job = true},
		},
	},

	TablesAndChairs = {
		Tables = {
            {coords = vec4(-1195.17, -892.43, 14.05, 124.0), size = {x = 0.8, y = 0.9, z = 0.25}},
            {coords = vec4(-1193.97, -894.23, 14.05, 124.0), size = {x = 0.8, y = 0.9, z = 0.25}},
            {coords = vec4(-1190.91, -891.92, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1193.37, -888.28, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1194.37, -883.55, 13.85, 124.0), size = {x = 1.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1191.76, -881.79, 13.85, 124.0), size = {x = 1.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1187.02, -882.47, 13.85, 124.0), size = {x = 0.8, y = 1.8, z = 0.15}},
            {coords = vec4(-1191.73, -886.52, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1188.99, -880.66, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1189.60, -885.68, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1183.16, -888.22, 13.85, 124.0), size = {x = 0.8, y = 1.8, z = 0.15}},
            {coords = vec4(-1186.99, -889.35, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1184.31, -892.90, 13.85, 124.0), size = {x = 1.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1182.25, -890.65, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1186.90, -894.62, 13.85, 124.0), size = {x = 1.8, y = 0.8, z = 0.15}},
            {coords = vec4(-1188.63, -891.22, 13.85, 124.0), size = {x = 0.8, y = 0.8, z = 0.15}},
		},
		Chairs = {
            {coords = vec4(-1190.40, -892.66, 13.55, 35.0), leavePos = vec4(-1191.00, -892.97, 13.99, 127.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.39, -891.22, 13.55, 215.0), leavePos = vec4(-1191.88, -891.58, 13.99, 127.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1193.90, -887.52, 13.55, 215.0), leavePos = vec4(-1194.43, -887.95, 13.99, 127.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.89, -888.94, 13.55, 35.0), leavePos = vec4(-1193.37, -889.23, 13.99, 127.0), size = {x = 0.55, y = 0.59, z = 1.05}},
            {coords = vec4(-1195.43, -883.46, 13.48, 303.0), leavePos = vec4(-1194.62, -884.96, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1194.85, -884.32, 13.48, 303.0), leavePos = vec4(-1194.62, -884.96, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1193.91, -882.47, 13.48, 125.0), leavePos = vec4(-1192.99, -883.82, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1193.39, -883.26, 13.48, 125.0), leavePos = vec4(-1192.99, -883.82, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.85, -881.84, 13.48, 303.0), leavePos = vec4(-1191.96, -883.18, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.36, -882.71, 13.48, 303.0), leavePos = vec4(-1191.96, -883.18, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.37, -880.83, 13.48, 125.0), leavePos = vec4(-1190.31, -882.24, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.82, -881.63, 13.48, 125.0), leavePos = vec4(-1190.31, -882.24, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.80, -886.79, 13.48, 303.0), leavePos = vec4(-1193.71, -886.12, 13.99, 30.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.47, -887.49, 13.48, 303.0), leavePos = vec4(-1193.71, -886.12, 13.99, 30.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.29, -887.21, 13.48, 33.0), leavePos = vec4(-1193.71, -886.12, 13.99, 30.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.13, -885.53, 13.48, 125.0), leavePos = vec4(-1191.47, -884.80, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.67, -886.15, 13.48, 125.0), leavePos = vec4(-1191.47, -884.80, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.09, -884.98, 13.48, 215.0), leavePos = vec4(-1189.41, -884.59, 13.99, 312.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.07, -886.36, 13.48, 33.0), leavePos = vec4(-1188.63, -886.023, 13.99, 301.51), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.63, -879.79, 13.52, 215.0), leavePos = vec4(-1189.72, -881.51, 13.99, 192.63), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.75, -879.24, 13.52, 165.0), leavePos = vec4(-1189.72, -881.51, 13.99, 192.63), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.94, -880.15, 13.52, 125.0), leavePos = vec4(-1189.72, -881.51, 13.99, 192.63), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.06, -881.45, 13.52, 215.0), leavePos = vec4(-1188.57, -882.28, 13.99, 136.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.84, -881.93, 13.52, 215.0), leavePos = vec4(-1188.57, -882.28, 13.99, 136.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.96, -882.85, 13.52, 33.0), leavePos = vec4(-1187.291, -883.93, 13.99, 119.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.86, -883.38, 13.52, 33.0), leavePos = vec4(-1187.291, -883.93, 13.99, 119.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.55, -890.04, 13.48, 33.0), leavePos = vec4(-1186.10, -889.82, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.51, -888.72, 13.48, 215.0), leavePos = vec4(-1187.08, -888.41, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.25, -887.15, 13.48, 215.0), leavePos = vec4(-1184.52, -887.98, 13.99, 120.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.96, -887.67, 13.48, 215.0), leavePos = vec4(-1184.52, -887.98, 13.99, 120.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1182.26, -888.76, 13.48, 33.0), leavePos = vec4(-1183.43, -889.53, 13.99, 125.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1182.88, -889.13, 13.48, 33.0), leavePos = vec4(-1183.43, -889.53, 13.99, 125.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1181.30, -889.98, 13.48, 125.0), leavePos = vec4(-1183.03, -890.15, 13.99, 125.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1180.68, -890.88, 13.48, 80.0), leavePos = vec4(-1183.03, -890.15, 13.99, 125.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1181.54, -891.58, 13.48, 33.0), leavePos = vec4(-1183.03, -890.15, 13.99, 125.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.25, -892.83, 13.48, 125.0), leavePos = vec4(-1184.18, -891.37, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.77, -892.03, 13.48, 125.0), leavePos = vec4(-1184.18, -891.37, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1184.81, -893.78, 13.48, 303.0), leavePos = vec4(-1185.77, -892.47, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.36, -893.02, 13.48, 303.0), leavePos = vec4(-1185.77, -892.47, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.76, -894.47, 13.48, 125.0), leavePos = vec4(-1186.61, -893.08, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.35, -893.70, 13.48, 125.0), leavePos = vec4(-1186.61, -893.08, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.25, -895.53, 13.48, 303.0), leavePos = vec4(-1188.25, -894.19, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.84, -894.75, 13.48, 303.0), leavePos = vec4(-1188.25, -894.19, 13.99, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.23, -890.37, 13.48, 215.0), leavePos = vec4(-1187.03, -891.44, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.54, -890.87, 13.48, 125.0), leavePos = vec4(-1187.03, -891.44, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.00, -890.11, 13.48, 125.0), leavePos = vec4(-1187.03, -891.44, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.33, -892.14, 13.48, 303.0), leavePos = vec4(-1189.16, -892.80, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.80, -891.46, 13.48, 303.0), leavePos = vec4(-1189.16, -892.80, 13.99, 215.0), size = {x = 0.52, y = 0.6, z = 1.05}},
		},
	},

	Crafting = {
		Fryer = {
			Positions = {
                {coords = vec4(-1201.25, -899.81, 13.55, 124.0), pedPos = vec4(-1200.68, -899.43, 13.95, 124.0), size = {x = 0.83, y = 0.8, z = 0.85}},
                {coords = vec4(-1201.69, -899.11, 13.55, 124.0), pedPos = vec4(-1201.18, -898.72, 13.95, 124.0), size = {x = 0.83, y = 0.8, z = 0.85}},
                {coords = vec4(-1202.18, -898.40, 13.55, 124.0), pedPos = vec4(-1201.50, -898.21, 13.95, 124.0), size = {x = 0.83, y = 0.8, z = 0.85}},
			},
			Food = {
				{
					label = 'Fries',
					item = 'friedfries',
					prop = 'prop_food_bs_chips',
					amount = 1,
					image = 'friedfries.png',
					cookingTime = 8, -- Cooking time [in seconds].
					ingredients = {
						{item = 'frozenfries', label = 'Frozen fries', amount = 1},
						{item = 'salt', label = 'Cooking salt', amount = 1},
					},
				},
				{
					label = 'Onion Ring',
					item = 'friedonionring',
					prop = 'fivecode_onionring',
					amount = 5,
					image = 'friedonionring.png',
					cookingTime = 8, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedonion', label = 'Sliced onion', amount = 5},
						{item = 'salt', label = 'Cooking salt', amount = 1},
					},
				},
				{
					label = 'Mozzarella Stick',
					item = 'friedmozzarellastick',
					prop = 'ng_proc_food_nana1a',
					amount = 5,
					image = 'friedmozzarellastick.png',
					cookingTime = 8, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedcheese', label = 'Sliced cheese', amount = 5},
						{item = 'salt', label = 'Cooking salt', amount = 1},
					},
				},
				{
					label = 'Fried Chicken Strip',
					item = 'friedchickenstrip',
					prop = 'ng_proc_food_nana1a',
					amount = 1,
					image = 'friedchickenstrip.png',
					cookingTime = 15, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawchickenstrip', label = 'Raw chicken strip', amount = 1},
					},
				},
				{
					label = 'Fried Fish Strip',
					item = 'friedfishstrip',
					prop = 'ng_proc_food_nana1a',
					amount = 1,
					image = 'friedfishstrip.png',
					cookingTime = 15, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawfishstrip', label = 'Raw fish strip', amount = 1},
					},
				},
			},
		},

		Grill = {
			Positions = {
                {coords = vec4(-1200.28, -901.27, 13.95, 124.0), pedPos = vec4(-1199.73, -900.83, 13.95, 124.0), size = {x = 0.7, y = 0.5, z = 0.35}},
                {coords = vec4(-1200.76, -900.68, 13.95, 124.0), pedPos = vec4(-1200.14, -900.19, 13.95, 124.0), size = {x = 0.72, y = 0.5, z = 0.35}},
                {coords = vec4(-1202.69, -897.62, 13.95, 124.0), pedPos = vec4(-1202.16, -897.23, 13.95, 124.0), size = {x = 0.72, y = 0.5, z = 0.35}},
                {coords = vec4(-1203.15, -897.04, 13.95, 124.0), pedPos = vec4(-1202.58, -896.64, 13.95, 124.0), size = {x = 0.72, y = 0.52, z = 0.35}},
			},
			Food = {
				{
					label = 'Burger Meat',
					item = 'grilledburgermeat',
					amount = 1,
					image = 'grilledburgermeat.png',
					cookingTime = 15, -- Cooking time [in seconds].
					ingredients = {
						{item = 'frozenburgermeat', label = 'Frozen burger meat', amount = 1},
						{item = 'butter', label = 'Cooking butter', amount = 1},
					},
				},
				{
					label = 'Grilled Steak',
					item = 'grilledsteak',
					amount = 1,
					image = 'grilledsteak.png',
					cookingTime = 15, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawsteak', label = 'Raw steak', amount = 1},
						{item = 'butter', label = 'Cooking butter', amount = 1},
					},
				},
				{
					label = 'Fried Egg',
					item = 'friedegg',
					amount = 1,
					image = 'friedegg.png',
					cookingTime = 10, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawegg', label = 'Raw egg', amount = 1},
						{item = 'butter', label = 'Cooking butter', amount = 1},
					},
				},
				{
					label = 'Grilled Bacon',
					item = 'grilledbacon',
					amount = 5,
					image = 'grilledbacon.png',
					cookingTime = 15, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedbacon', label = 'Sliced bacon', amount = 5},
						{item = 'butter', label = 'Cooking butter', amount = 1},
					},
				},
				{
					label = 'Grilled Burger Buns',
					item = 'grilledburgerbun',
					amount = 2,
					image = 'grilledburgerbun.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedburgerbun', label = 'Sliced burger bun', amount = 5},
						{item = 'butter', label = 'Cooking butter', amount = 1},
					},
				},
			},
		},

		CuttingTable = {
			Positions = {
				{coords = vec4(-1199.55, -902.28, 13.95, 124.00), pedPos = vec4(-1199.01, -901.86, 13.99, 124.0), size = {x = 1.2, y = 0.77, z = 0.35}},
			},
			Food = {
				{
					label = 'Sliced Tomato',
					item = 'slicedtomato',
					amount = 5,
					image = 'slicedtomato.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawtomato', label = 'Tomato', amount = 1},
					},
				},
				{
					label = 'Sliced Salad',
					item = 'slicedsalad',
					amount = 5,
					image = 'slicedsalad.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawsalad', label = 'Salad', amount = 1},
					},
				},
				{
					label = 'Sliced Cucumber',
					item = 'slicedcucumber',
					amount = 5,
					image = 'slicedcucumber.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawcucumber', label = 'Cucumber', amount = 1},
					},
				},
				{
					label = 'Sliced Onion',
					item = 'slicedonion',
					amount = 5,
					image = 'slicedonion.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawonion', label = 'Onion', amount = 1},
					},
				},
				{
					label = 'Sliced Chilli Pepper',
					item = 'slicedchillipepper',
					amount = 5,
					image = 'slicedchillipepper.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawchillipepper', label = 'Chilli pepper', amount = 1},
					},
				},
				{
					label = 'Sliced Cheese',
					item = 'slicedcheese',
					amount = 5,
					image = 'slicedcheese.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawcheese', label = 'Cheese', amount = 1},
					},
				},
				{
					label = 'Sliced Ham',
					item = 'slicedham',
					amount = 5,
					image = 'slicedham.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawham', label = 'Ham', amount = 1},
					},
				},
				{
					label = 'Sliced Bacon',
					item = 'slicedbacon',
					amount = 5,
					image = 'slicedbacon.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawbacon', label = 'Bacon', amount = 1},
					},
				},
				{
					label = 'Sliced Burger Buns',
					item = 'slicedburgerbun',
					amount = 2,
					image = 'slicedburgerbun.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawburgerbun', label = 'Burger bun', amount = 1},
					},
				},
				{
					label = 'Sliced Sandwich Bread',
					item = 'slicedsandwichbread',
					amount = 2,
					image = 'slicedsandwichbread.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawsandwichbread', label = 'Sandwich bread', amount = 1},
					},
				},
			},
		},

		Drinks = {
			Positions = {
                {coords = vec4(-1199.96, -895.07, 14.35, 124.00), pedPos = vec4(-1199.30, -894.62, 13.99, 124.0), size = {x = 1.10, y = 1.15, z = 0.85}},
                {coords = vec4(-1199.25, -895.95, 14.35, 124.00), pedPos = vec4(-1198.64, -895.58, 13.99, 124.0), size = {x = 1.10, y = 1.15, z = 0.85}},
                {coords = vec4(-1197.83, -898.48, 14.15, 124.00), pedPos = vec4(-1197.19, -898.16, 13.99, 124.0), size = {x = 0.75, y = 0.7, z = 0.75}},
			},
			Food = {
				{
					label = 'eCola',
					item = 'burgershotcola',
					amount = 1,
					image = 'burgershotcola.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'water', label = 'Water', amount = 1},
						{item = 'colasyrup', label = 'eCola syrup', amount = 1},
						{item = 'ice', label = 'Ice cube', amount = 5},
						{item = 'burgershotdrinkcup', label = 'Drink cup', amount = 1},
					},
				},
				{
					label = 'eCola Light',
					item = 'burgershotcolalight',
					amount = 1,
					image = 'burgershotcolalight.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'water', label = 'Water', amount = 1},
						{item = 'colalightsyrup', label = 'eCola Light syrup', amount = 1},
						{item = 'ice', label = 'Ice cube', amount = 5},
						{item = 'burgershotdrinkcup', label = 'Drink cup', amount = 1},
					},
				},
				{
					label = 'Sprunk',
					item = 'burgershotsprunk',
					amount = 1,
					image = 'burgershotsprunk.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'water', label = 'Water', amount = 1},
						{item = 'sprunksyrup', label = 'Sprunk syrup', amount = 1},
						{item = 'ice', label = 'Ice cube', amount = 5},
						{item = 'burgershotdrinkcup', label = 'Drink cup', amount = 1},
					},
				},
				{
					label = 'Orang O Tang',
					item = 'burgershotorang_o_tang',
					amount = 1,
					image = 'burgershotorang_o_tang.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'water', label = 'Water', amount = 1},
						{item = 'orang_o_tangsyrup', label = 'Orang o tang syrup', amount = 1},
						{item = 'ice', label = 'Ice cube', amount = 5},
						{item = 'burgershotdrinkcup', label = 'Drink cup', amount = 1},
					},
				},
			},
		},
		
		PackingTable = {
			Positions = {
                {coords = vec4(-1200.36, -896.19, 13.90, 124.0), pedPos = vec4(-1200.90, -896.54, 13.99, 310.0), size = {x = 1.8, y = 0.75, z = 0.35}},
                {coords = vec4(-1199.00, -898.25, 13.90, 124.0), pedPos = vec4(-1199.49, -898.65, 13.90, 310.0), size = {x = 1.8, y = 0.72, z = 0.35}},
                {coords = vec4(-1197.53, -899.37, 13.90, 34.0), pedPos = vec4(-1197.28, -899.92, 13.99, 34.0), size = {x = 1.4, y = 0.72, z = 0.35}},
			},
			Food = {
				{
					label = 'Food Tray',
					item = 'burgershotfoodtray',
					amount = 1,
					image = 'burgershotfoodtray.png',
					cookingTime = 10, -- Cooking time [in seconds].
					ingredients = {
						{item = 'burgershotfoodtrayempty', label = 'Empty food tray', amount = 1},
						{item = 'classicburger', label = 'GrillMaster Classic Burger', amount = 1},
						{item = 'frozenfries', label = 'Fries', amount = 1},
						{item = 'burgershotcola', label = 'eCola', amount = 1},
					},
				},
				{
					label = 'GrillMaster Classic Burger',
					item = 'classicburger',
					amount = 1,
					image = 'classicburger.png',
					cookingTime = 12, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'grilledburgermeat', label = 'Grilled burger meat', amount = 1},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedonion', label = 'Sliced onion', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 1},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'GrillMaster Spicy Classic Burger',
					item = 'classicburgerspicy',
					amount = 1,
					image = 'classicburgerspicy.png',
					cookingTime = 12, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'grilledburgermeat', label = 'Grilled burger meat', amount = 1},
						{item = 'slicedchillipepper', label = 'Sliced chilli pepper', amount = 5},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedonion', label = 'Sliced onion', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 1},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'Loaded Chicken Avenger',
					item = 'chickenburger',
					amount = 1,
					image = 'chickenburger.png',
					cookingTime = 12, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'friedchickenstrip', label = 'Fried chicken strip', amount = 2},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 2},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'Loaded Spicy Chicken Avenger',
					item = 'chickenburgerspicy',
					amount = 1,
					image = 'chickenburgerspicy.png',
					cookingTime = 12, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'friedchickenstrip', label = 'Fried chicken strip', amount = 2},
						{item = 'slicedchillipepper', label = 'Sliced chilli pepper', amount = 5},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 2},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'Ocean Catch Burger',
					item = 'fishburger',
					amount = 1,
					image = 'fishburger.png',
					cookingTime = 12, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'friedfishstrip', label = 'Fried fish strip', amount = 2},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 2},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'The Cardiac Crusher',
					item = 'obeseburger',
					amount = 1,
					image = 'obeseburger.png',
					cookingTime = 22, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'grilledburgermeat', label = 'Grilled burger meat', amount = 10},
						{item = 'grilledbacon', label = 'Grilled bacon', amount = 15},
						{item = 'slicedcheese', label = 'Sliced cheese', amount = 5},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'Steakhouse Supreme Burger',
					item = 'steakburger',
					amount = 1,
					image = 'steakburger.png',
					cookingTime = 12, -- Cooking time [in seconds].
					ingredients = {
						{item = 'grilledburgerbun', label = 'Grilled burger buns', amount = 2},
						{item = 'grilledsteak', label = 'Grilled steak', amount = 1},
						{item = 'grilledbacon', label = 'Grilled bacon', amount = 4},
						{item = 'slicedcheese', label = 'Sliced cheese', amount = 2},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 2},
						{item = 'ketchup', label = 'Ketchup', amount = 1},
					},
				},
				{
					label = 'Reverse Burger',
					item = 'reverseburger',
					amount = 1,
					image = 'reverseburger.png',
					cookingTime = 8, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedsalad', label = 'Sliced salad', amount = 2},
						{item = 'grilledburgermeat', label = 'Grilled burger meat', amount = 2},
						{item = 'slicedcheese', label = 'Sliced cheese', amount = 2},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedonion', label = 'Sliced onion', amount = 2},
						{item = 'slicedcucumber', label = 'Sliced cucumber', amount = 2},
					},
				},
				{
					label = 'Sunrise Ham Melt',
					item = 'burgershotsandwich',
					amount = 1,
					image = 'burgershotsandwich.png',
					cookingTime = 8, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedsandwichbread', label = 'Sliced sandwich bread', amount = 2},
						{item = 'friedegg', label = 'Fried egg', amount = 1},
						{item = 'slicedcheese', label = 'Sliced cheese', amount = 2},
						{item = 'slicedham', label = 'Sliced Ham', amount = 2},
						{item = 'slicedtomato', label = 'Sliced tomato', amount = 3},
						{item = 'slicedsalad', label = 'Sliced salad', amount = 2},
						{item = 'slicedcucumber', label = 'Sliced cucumber', amount = 2},
					},
				},
			},
		},

		IceMachine = {
			Positions = {
				{coords = vec4(-1195.94, -901.35, 13.55, 124.0), pedPos = vec4(-1196.36, -900.70, 13.99, 215.0), object = {use = true, coords = vec3(-1195.94, -901.35, 12.99), xRot = -0.34, yRot = -0.07, zRot = -146.20}, size = {x = 1.15, y = 0.75, z = 0.95}},
			},
			Food = {
				{
					label = 'Ice Cube',
					item = 'ice',
					amount = 5,
					image = 'ice.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'water', label = 'Water', amount = 1},
					},
				},
			},
		},

		SlushieMachine = { 
			Positions = {
				{coords = vec4(-1193.253, -892.2784, 0.0, 0.0), pedPos = vec4(-1190.52, -898.04, 0.0, 0.0), size = {x = 0.55, y = 0.45, z = 0.85}},
			},
			Food = {
				{
					label = 'eCola Shushie',
					item = 'burgershotcolaslushie',
					amount = 5,
					image = 'burgershotcolaslushie.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'ice', label = 'Ice cube', amount = 10},
						{item = 'colasyrup', label = 'eCola syrup', amount = 1},
						{item = 'water', label = 'Water', amount = 1},
					},
				},
				{
					label = 'eCola Light Shushie',
					item = 'burgershotcolalightslushie',
					amount = 5,
					image = 'burgershotcolalightslushie.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'ice', label = 'Ice cube', amount = 10},
						{item = 'colalightsyrup', label = 'eCola syrup', amount = 1},
						{item = 'water', label = 'Water', amount = 1},
					},
				},
				{
					label = 'Sprunk Shushie',
					item = 'burgershotsprunkslushie',
					amount = 5,
					image = 'burgershotsprunkslushie.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'ice', label = 'Ice cube', amount = 10},
						{item = 'sprunksyrup', label = 'Sprunk syrup', amount = 1},
						{item = 'water', label = 'Water', amount = 1},
					},
				},
				{
					label = 'Orang O Tang Shushie',
					item = 'burgershotorang_o_tangslushie',
					amount = 5,
					image = 'burgershotorang_o_tangslushie.png',
					cookingTime = 5, -- Cooking time [in seconds].
					ingredients = {
						{item = 'ice', label = 'Ice cube', amount = 10},
						{item = 'orang_o_tangsyrup', label = 'Sprunk syrup', amount = 1},
						{item = 'water', label = 'Water', amount = 1},
					},
				},
			},
		},
	},

	CashRegisters = {
		Registers = {
            {coords = vec4(-1196.01, -891.29, 14.15, 35.0), size = {x = 0.52, y = 0.4, z = 0.55}},
            {coords = vec4(-1194.65, -893.29, 14.15, 35.0), size = {x = 0.52, y = 0.4, z = 0.55}},
            {coords = vec4(-1193.41, -895.19, 14.15, 35.0), size = {x = 0.52, y = 0.4, z = 0.55}},
		},
	},

	PoliceAlerts = {
		Alerts = {
            {coords = vec4(-1193.12, -896.17, 13.85, 35.0), object = {use = true, coords = vec3(-1193.07, -896.17, 13.77), xRot = 0.211, yRot = -0.262, zRot = -55.60}, size = {x = 0.25, y = 0.25, z = 0.25}},
            {coords = vec4(-1196.87, -890.66, 13.85, 35.0), object = {use = true, coords = vec3(-1196.81, -890.62, 13.76), xRot = 0.211, yRot = -0.262, zRot = -55.60}, size = {x = 0.25, y = 0.25, z = 0.25}},
		},
	},

	Delivery = {
		StartDelivery = {
            {coords = vec4(-1198.21, -891.17, 14.45, 35.0), pedPos = vec4(-1197.89, -891.58, 13.99, 35.0), object = {use = true, coords = vec3(-1198.23, -891.165, 14.45), xRot = 90.0, yRot = 34.0, zRot = -3.0}, size = {x = 0.25, y = 0.25, z = 0.45}},
		},
	},

	Missions = {
		StartMission = {
            {coords = vec4(-1188.95, -897.35, 14.45, 35.0), pedPos = vec4(-1189.18, -896.95, 13.99, 35.0), storagePos = vec4(-1201.44, -891.80, 13.99, 125.0), size = {x = 0.95, y = 0.25, z = 0.95}},
		},
		DirtySpots = {
			Ground = {
                vec4(-1194.32, -890.06, 14.00, 212.83),
                vec4(-1192.48, -893.17, 14.00, 213.02),
                vec4(-1190.03, -894.16, 14.00, 272.56),
                vec4(-1187.53, -892.91, 14.00, 298.81),
                vec4(-1184.53, -890.67, 14.00, 320.49),
                vec4(-1186.28, -887.59, 14.00, 30.68),
                vec4(-1188.55, -883.79, 14.00, 29.73),
                vec4(-1191.52, -883.88, 14.00, 116.27),
                vec4(-1194.71, -885.77, 14.00, 126.97),
                vec4(-1197.78, -886.07, 14.02, 112.36),
                vec4(-1192.23, -890.11, 14.00, 289.67),
                vec4(-1190.02, -888.66, 14.00, 300.91),
                vec4(-1187.62, -887.11, 14.00, 301.21),
                vec4(-1198.37, -889.65, 14.00, 123.83),
                vec4(-1189.43, -895.75, 14.00, 224.65),        
			},
			Tables = {
                vec4(-1193.57, -884.52, 14.00, 30.76),
                vec4(-1192.30, -885.92, 14.00, 211.19),
                vec4(-1191.06, -882.93, 14.00, 28.63),
                vec4(-1189.27, -881.66, 14.00, 349.67),
                vec4(-1188.08, -883.12, 14.00, 301.29),
                vec4(-1188.95, -885.21, 14.00, 118.22),
                vec4(-1194.10, -888.78, 14.00, 299.75),
                vec4(-1191.53, -892.47, 14.00, 309.60),
                vec4(-1187.97, -891.89, 14.00, 37.94),
                vec4(-1187.65, -893.62, 14.00, 219.79),
                vec4(-1185.07, -891.85, 14.00, 203.12),
                vec4(-1184.15, -888.98, 14.00, 313.55),
                vec4(-1186.44, -888.93, 14.00, 125.72),
                vec4(-1183.22, -890.49, 14.00, 262.77),
                vec4(-1194.74, -891.87, 14.00, 123.18),
			},
		},
	},
	
	Trash = {
		Positions = {
            {coords = vec4(-1203.42, -887.23, 12.75, 34.0), size = {x = 0.80, y = 0.80, z = 1.00}},
            {coords = vec4(-1197.42, -887.22, 13.85, 34.0), size = {x = 0.60, y = 0.60, z = 0.95}},
            {coords = vec4(-1191.01, -896.78, 13.85, 34.0), size = {x = 0.60, y = 0.60, z = 0.95}},
            {coords = vec4(-1185.77, -890.31, 13.85, 34.0), size = {x = 0.60, y = 0.60, z = 0.95}},
            {coords = vec4(-1190.05, -884.13, 13.85, 34.0), size = {x = 0.60, y = 0.60, z = 0.95}},
            {coords = vec4(-1191.64, -897.22, 13.85, 39.0), size = {x = 0.60, y = 0.60, z = 0.95}},
		},
	},

	HotTables = {
		Positions = {
            {coords = vec4(-1196.90, -895.50, 14.00, 124.00), size = {x = 1.20, y = 1.20, z = 1.50}},
            {coords = vec4(-1197.74, -894.3, 14.00, 124.00), size = {x = 1.20, y = 1.20, z = 1.50}},
            {coords = vec4(-1198.65, -893.1, 14.00, 124.00), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
	},

	SupplyShop = {
		Positions = {
            {coords = vec4(-332.59, -2790.60, 5.00, 110.0), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
		Items = {
			{item = 'burgershotfoodtrayempty', label = 'Empty food tray', icon = 'burgershotfoodtrayempty.png', price = 10},
		-- Other
			{item = 'ketchup', label = 'Normal Ketchup', icon = 'ketchup.png', price = 5},
			{item = 'salt', label = 'Cooking Salt', icon = 'salt.png', price = 2},
			{item = 'burgershotdrinkcup', label = 'Drink Cup', icon = 'burgershotdrinkcup.png', price = 2},
			{item = 'butter', label = 'Cooking Butter', icon = 'butter.png', price = 2},
			{item = 'colasyrup', label = 'eCola Syrup', icon = 'colasyrup.png', price = 5},
			{item = 'colalightsyrup', label = 'eCola Light Syrup', icon = 'colalightsyrup.png', price = 5},
			{item = 'sprunksyrup', label = 'Sprunk Syrup', icon = 'sprunksyrup.png', price = 5},
			{item = 'orang_o_tangsyrup', label = 'Orang O Tang Syrup', icon = 'orang_o_tangsyrup.png', price = 5},
			{item = 'water', label = 'Water', icon = 'water.png', price = 5},
			{item = 'cleansponge', label = 'Clean Soonge', icon = 'cleansponge.png', price = 2},
		-- Cutting Table Items
			{item = 'rawtomato', label = 'Tomato', icon = 'rawtomato.png', price = 5},
			{item = 'rawsalad', label = 'Salad', icon = 'rawsalad.png', price = 5},
			{item = 'rawcucumber', label = 'Cucumber', icon = 'rawcucumber.png', price = 5},
			{item = 'rawonion', label = 'Onion', icon = 'rawonion.png', price = 5},
			{item = 'rawchillipepper', label = 'Chilli Pepper', icon = 'rawchillipepper.png', price = 5},
			{item = 'rawcheese', label = 'Cheese', icon = 'rawcheese.png', price = 5},
			{item = 'rawham', label = 'Ham', icon = 'rawham.png', price = 5},
			{item = 'rawbacon', label = 'Bacon', icon = 'rawbacon.png', price = 5},
			{item = 'rawburgerbun', label = 'Burger Buns', icon = 'rawburgerbun.png', price = 8},
			{item = 'rawsandwichbread', label = 'Sandwich Bread', icon = 'rawsandwichbread.png', price = 8},
		-- Frier Items
			{item = 'frozenfries', label = 'Frozen Fries', icon = 'frozenfries.png', price = 5},
			{item = 'rawchickenstrip', label = 'Raw Chicken Strip', icon = 'rawchickenstrip.png', price = 20},
			{item = 'rawfishstrip', label = 'Raw Fish Strip', icon = 'rawfishstrip.png', price = 20},
		-- Grill Items
			{item = 'frozenburgermeat', label = 'Frozen Burger Meat', icon = 'frozenburgermeat.png', price = 8},
			{item = 'rawsteak', label = 'Raw Steak', icon = 'rawsteak.png', price = 8},
			{item = 'rawegg', label = 'Raw Egg', icon = 'rawegg.png', price = 5},
		},
	},

	Dog = {
		Positions = {
			{coords = vec4(-1180.96, -884.283, 13.78, 320.0), pedPos = vec4(-1180.55, -883.91, 13.78, 130.0), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
	},

	NpcEmployee = {
		Positions = {
            {coords = vec4(-1196.47, -891.69, 13.99, 305.0), hotTablePos = vec4(-1197.88, -892.65, 13.99, 125.0), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
	},
	
	MenuList = {   -- Items displayed in food menu + npc employee menu.
		Items = {
			-- Drinks
			{category = 'Drinks', items = {
				{item = 'burgershotcola', label = 'eCola', icon = 'burgershotcola.png', price = 5},
				{item = 'burgershotcolalight', label = 'eCola Light', icon = 'burgershotcolalight.png', price = 5},
				{item = 'burgershotsprunk', label = 'Sprunk', icon = 'burgershotsprunk.png', price = 5},
				{item = 'burgershotorang_o_tang', label = 'Orang O Tang', icon = 'burgershotorang_o_tang.png', price = 5},
			}},
		
			-- Sides
			{category = 'Sides', items = {
				{item = 'friedfries', label = 'Fries', icon = 'friedfries.png', price = 5},
				{item = 'friedonionring', label = 'Onion Ring', icon = 'friedonionring.png', price = 8},
				{item = 'friedmozzarellastick', label = 'Mozzarella Stick', icon = 'friedmozzarellastick.png', price = 8},
				{item = 'burgershotfoodtray', label = 'Food Tray', icon = 'burgershotfoodtray.png', price = 45},
			}},
		
			-- Burgers
			{category = 'Burgers', items = {
				{item = 'classicBurger', label = 'GrillMaster Classic Burger', icon = 'classicBurger.png', price = 25},
				{item = 'classicburgerspicy', label = 'GrillMaster Spicy Classic Burger', icon = 'classicburgerspicy.png', price = 25},
				{item = 'chickenburger', label = 'Loaded Chicken Avenger', icon = 'chickenburger.png', price = 25},
				{item = 'chickenburgerspicy', label = 'Loaded Spicy Chicken Avenger', icon = 'chickenburgerspicy.png', price = 25},
				{item = 'fishburger', label = 'Ocean Catch Burger', icon = 'fishburger.png', price = 25},
				{item = 'obeseburger', label = 'The Cardiac Crusher', icon = 'obeseburger.png', price = 25},
				{item = 'steakburger', label = 'Steakhouse Supreme Burger', icon = 'steakburger.png', price = 25},
				{item = 'reverseburger', label = 'Reverse Burger', icon = 'reverseburger.png', price = 25},
				{item = 'burgershotsandwich', label = 'Sunrise Ham Melt', icon = 'burgershotsandwich.png', price = 25},
			}},
		},
		Positions = {
            {coords = vec4(-1196.27, -889.70, 13.99, 125.0), size = {x = 0.5, y = 0.5, z = 1.50}},
		},
	},
}