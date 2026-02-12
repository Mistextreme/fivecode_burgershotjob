--[[ uNiqx Burger Shot MLO - https://www.gta5-mods.com/maps/mlo-burgershot-2023-add-on-sp-fivem ]]--

return {
	Blip = {
		coords = vec3(-1184.79, -885.14, 14.03),
	},
	
	DutySystem = {
		coords = vec4(-1200.0, -903.1, 14.8, 35.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.15, y = 1.0, z = 1.8},
		},
	},

	BossMenu = {
		coords = vec4(-1200.7, -902.0, 14.8, 35.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.15, y = 1.0, z = 1.8},
		},
	},

	LockerRoom = {
		coords = vec4(-1200.4, -902.6, 13.5, 35.0),
		target = {
			icon = 'fas fa-tshirt',
			size = {x = 0.15, y = 2.5, z = 0.8},
		},
	},

	Storage = {
		coords = vec4(-1195.55, -902.5, 14.0, 303.5),
		target = {
			icon = 'fas fa-box',
			size = {x = 0.6, y = 2.7, z = 2.1},
		},
	},

	Garage = {
		spawn = {
			vec4(-1169.12, -894.24, 13.68, 34.20),
			vec4(-1163.80, -891.09, 13.71, 124.18),
			vec4(-1166.15, -888.30, 13.69, 122.15),
		},
		coords = vec4(-1177.01, -890.52, 13.84, 125.00),
		target = {
			icon = 'fas fa-car',
			size = {x = 0.8, y = 0.5, z = 1.85},
		},
	},

	BathRooms = {
		Toilets = {
			{coords = vec4(-1200.29, -892.32, 13.35, 35.0), pedPos = vec4(-1200.52, -891.81, 13.79, 35.0), size = {x = 0.55, y = 0.7, z = 0.95}},

			{coords = vec4(-1204.22, -894.98, 13.35, 35.0), pedPos = vec4(-1204.59, -894.55, 13.79, 35.0), size = {x = 0.55, y = 0.7, z = 0.95}},
		},
		Sinks = {
			-- Bathroom
			{coords = vec4(-1201.18, -890.95, 13.95, 35.0), pedPos = vec4(-1200.88, -891.33, 13.79, 35.0), size = {x = 0.60, y = 0.7, z = 1.05}},
			{coords = vec4(-1205.12, -893.69, 13.95, 35.0), pedPos = vec4(-1204.86, -894.04, 13.79, 35.0), size = {x = 0.60, y = 0.7, z = 1.05}},
		},
	},

	TablesAndChairs = {
		Tables = {
			{coords = vec4(-1178.16, -895.00, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1181.19, -896.80, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1184.12, -898.73, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1181.42, -892.62, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1184.35, -894.67, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1188.10, -880.32, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1190.94, -882.29, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1193.84, -884.20, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1196.81, -886.14, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1190.12, -886.09, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1187.25, -884.03, 13.72, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1192.51, -893.91, 13.95, 345.0), size = {x = 1.15, y = 0.9, z = 0.25}},
			{coords = vec4(-1194.30, -893.49, 13.95, 345.0), size = {x = 1.15, y = 0.9, z = 0.25}},
			{coords = vec4(-1196.44, -892.82, 13.95, 345.0), size = {x = 1.15, y = 0.9, z = 0.25}},
		},
		Chairs = {
			{coords = vec4(-1177.10, -894.64, 13.42, 125.0), leavePos = vec4(-1178.26, -893.35, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1177.64, -893.99, 13.42, 125.0), leavePos = vec4(-1178.26, -893.35, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1179.97, -896.63, 13.42, 125.0), leavePos = vec4(-1180.92, -895.24, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1180.41, -895.97, 13.42, 125.0), leavePos = vec4(-1180.92, -895.24, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.89, -898.56, 13.42, 125.0), leavePos = vec4(-1183.85, -897.25, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.31, -897.93, 13.42, 125.0), leavePos = vec4(-1183.85, -897.25, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1180.80, -891.67, 13.42, 125.0), leavePos = vec4(-1180.02, -892.98, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1180.44, -892.32, 13.42, 125.0), leavePos = vec4(-1180.02, -892.98, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.70, -893.73, 13.42, 125.0), leavePos = vec4(-1182.87, -894.87, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.37, -894.22, 13.42, 125.0), leavePos = vec4(-1182.87, -894.87, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.56, -879.29, 13.42, 125.0), leavePos = vec4(-1186.68, -880.76, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.18, -879.98, 13.42, 125.0), leavePos = vec4(-1186.68, -880.76, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.42, -881.32, 13.42, 125.0), leavePos = vec4(-1189.49, -882.48, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.06, -881.80, 13.42, 125.0), leavePos = vec4(-1189.49, -882.48, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1193.25, -883.28, 13.42, 125.0), leavePos = vec4(-1192.38, -884.50, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.95, -883.77, 13.42, 125.0), leavePos = vec4(-1192.38, -884.50, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1196.29, -885.19, 13.42, 125.0), leavePos = vec4(-1195.24, -886.56, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.80, -885.84, 13.42, 125.0), leavePos = vec4(-1195.24, -886.56, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.16, -883.84, 13.42, 125.0), leavePos = vec4(-1187.08, -882.54, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.55, -883.26, 13.42, 125.0), leavePos = vec4(-1187.08, -882.54, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.08, -885.78, 13.42, 125.0), leavePos = vec4(-1189.98, -884.52, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.37, -885.24, 13.42, 125.0), leavePos = vec4(-1189.98, -884.52, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1178.96, -895.94, 13.42, 302.0), leavePos = vec4(-1179.79, -894.49, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1179.33, -895.27, 13.42, 302.0), leavePos = vec4(-1179.79, -894.49, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1181.88, -897.86, 13.42, 302.0), leavePos = vec4(-1182.70, -896.56, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.22, -897.23, 13.42, 302.0), leavePos = vec4(-1182.70, -896.56, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1184.77, -899.80, 13.42, 302.0), leavePos = vec4(-1185.68, -898.45, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1185.07, -899.22, 13.42, 302.0), leavePos = vec4(-1185.68, -898.45, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.62, -892.86, 13.42, 302.0), leavePos = vec4(-1181.73, -894.29, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.24, -893.53, 13.42, 302.0), leavePos = vec4(-1181.73, -894.29, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1185.54, -894.84, 13.42, 302.0), leavePos = vec4(-1184.61, -896.15, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1185.12, -895.46, 13.42, 302.0), leavePos = vec4(-1184.61, -896.15, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.23, -880.63, 13.42, 302.0), leavePos = vec4(-1188.37, -881.86, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.88, -881.12, 13.42, 302.0), leavePos = vec4(-1188.37, -881.86, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.07, -882.60, 13.42, 302.0), leavePos = vec4(-1191.16, -883.96, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.81, -883.10, 13.42, 302.0), leavePos = vec4(-1191.16, -883.96, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.05, -884.44, 13.42, 302.0), leavePos = vec4(-1194.21, -885.69, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1194.64, -885.03, 13.42, 302.0), leavePos = vec4(-1194.21, -885.69, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1198.00, -886.34, 13.42, 302.0), leavePos = vec4(-1197.15, -887.84, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1197.48, -886.97, 13.42, 302.0), leavePos = vec4(-1197.15, -887.84, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.74, -887.02, 13.42, 302.0), leavePos = vec4(-1191.69, -885.64, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.23, -886.34, 13.42, 302.0), leavePos = vec4(-1191.69, -885.64, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.90, -885.04, 13.42, 302.0), leavePos = vec4(-1188.79, -883.72, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.29, -884.43, 13.42, 302.0), leavePos = vec4(-1188.79, -883.72, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1194.63, -902.98, 13.42, 210.0), leavePos = vec4(-1194.34, -903.49, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.39, -903.44, 13.42, 210.0), leavePos = vec4(-1195.12, -903.93, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1196.11, -903.86, 13.42, 210.0), leavePos = vec4(-1195.90, -904.34, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.40, -882.55, 13.42, 302.0), leavePos = vec4(-1182.99, -882.44, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.94, -883.36, 13.42, 302.0), leavePos = vec4(-1182.45, -883.10, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.45, -884.18, 13.42, 302.0), leavePos = vec4(-1181.98, -883.93, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1179.92, -887.91, 13.42, 302.0), leavePos = vec4(-1179.43, -887.59, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1179.32, -888.71, 13.42, 302.0), leavePos = vec4(-1178.87, -888.41, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1178.84, -889.41, 13.42, 302.0), leavePos = vec4(-1178.44, -889.13, 13.99, 210.0), size = {x = 0.52, y = 0.6, z = 1.05}},
		},
	},

	Crafting = {
		Fryer = {
			Positions = {
				{coords = vec4(-1195.25, -900.15, 13.55, 165.0), pedPos = vec4(-1195.16, -899.54, 13.95, 165.0), size = {x = 0.8, y = 0.8, z = 1.2}},
				{coords = vec4(-1196.12, -900.05, 13.55, 165.0), pedPos = vec4(-1195.97, -899.35, 13.95, 165.0), size = {x = 0.8, y = 0.8, z = 1.2}},
				{coords = vec4(-1196.90, -899.75, 13.55, 165.0), pedPos = vec4(-1196.74, -899.11, 13.95, 165.0), size = {x = 0.8, y = 0.8, z = 1.2}},
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
				{coords = vec4(-1195.82, -897.17, 13.55, 165.0), pedPos = vec4(-1195.95, -897.99, 13.95, 345.0), size = {x = 0.85, y = 0.85, z = 1.2}},
				{coords = vec4(-1194.95, -897.47, 13.55, 165.0), pedPos = vec4(-1195.18, -898.31, 13.95, 345.0), size = {x = 0.85, y = 0.85, z = 1.2}},
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
				{coords = vec4(-1200.84, -894.87, 13.55, 215.00), pedPos = vec4(-1200.30, -894.57, 13.99, 124.0), size = {x = 0.95, y = 1.5, z = 1.2}},
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
				{coords = vec4(-1197.17, -896.13, 14.15, 165.00), pedPos = vec4(-1196.94, -895.31, 13.59, 165.0), size = {x = 0.65, y = 0.65, z = 0.65}},
				{coords = vec4(-1193.19, -897.28, 14.15, 165.00), pedPos = vec4(-1193.00, -896.34, 13.59, 165.0), size = {x = 0.65, y = 0.65, z = 0.65}},
				{coords = vec4(-1191.22, -899.28, 14.15, 215.00), pedPos = vec4(-1191.70, -898.82, 13.59, 215.0), size = {x = 0.95, y = 0.95, z = 0.65}},
				{coords = vec4(-1190.36, -898.72, 14.15, 215.00), pedPos = vec4(-1190.72, -898.15, 13.59, 215.0), size = {x = 0.95, y = 0.95, z = 0.65}},
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
				{coords = vec4(-1201.54, -895.37, 13.55, 215.00), pedPos = vec4(-1202.17, -895.77, 13.99, 305.0), size = {x = 0.95, y = 1.5, z = 1.2}},
				{coords = vec4(-1193.95, -900.54, 13.55, 75.00), pedPos = vec4(-1193.86, -899.93, 13.99, 165.0), size = {x = 0.95, y = 1.5, z = 1.2}},
				{coords = vec4(-1197.85, -899.46, 13.55, 75.00), pedPos = vec4(-1197.69, -898.81, 13.99, 165.0), size = {x = 0.95, y = 0.85, z = 1.2}},
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
				{coords = vec4(-1202.15, -898.65, 13.55, 124.0), pedPos = vec4(-1201.69, -898.41, 13.99, 124.0), object = {use = true, coords = vec3(-1202.36, -898.77, 12.85), xRot = 0.0, yRot = 0.0, zRot = 124.0}, size = {x = 0.75, y = 0.75, z = 0.85}},
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
				{coords = vec4(-1199.91, -896.15, 14.35, 35.0), pedPos = vec4(-1199.54, -896.78, 13.99, 35.0), size = {x = 0.55, y = 0.45, z = 0.85}},
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
			{coords = vec4(-1197.53, -892.61, 14.15, 345.0), size = {x = 0.52, y = 0.6, z = 0.55}},
			{coords = vec4(-1195.47, -893.09, 14.15, 345.0), size = {x = 0.52, y = 0.6, z = 0.55}},
			{coords = vec4(-1193.44, -893.70, 14.15, 345.0), size = {x = 0.52, y = 0.6, z = 0.55}},
			{coords = vec4(-1191.50, -894.26, 13.95, 345.0), size = {x = 0.52, y = 0.6, z = 0.55}},
		},
	},

	PoliceAlerts = {
		Alerts = {
			{coords = vec4(-1198.48, -892.352, 14.25, -14.37), object = {use = true, coords = vec3(-1198.48, -892.35, 14.25), xRot = 0.211, yRot = -0.262, zRot = -14.375}, size = {x = 0.25, y = 0.25, z = 0.35}},
			{coords = vec4(-1190.083, -894.692, 14.250, -14.37), object = {use = true, coords = vec3(-1190.083, -894.692, 14.250), xRot = 0.211, yRot = -0.262, zRot = -14.375}, size = {x = 0.25, y = 0.25, z = 0.35}},
		},
	},

	Delivery = {
		StartDelivery = {
			{coords = vec4(-1200.19, -892.86, 14.25, 35.0), pedPos = vec4(-1200.05, -893.12, 13.99, 35.0), object = {use = true, coords = vec3(-1200.19, -892.86, 14.25), xRot = 90.0, yRot = 0.0, zRot = 33.628},  size = {x = 0.25, y = 0.25, z = 0.45}},
		},
	},

	Missions = {
		StartMission = {
			{coords = vec4(-1200.80, -893.26, 14.25, 33.0), pedPos = vec4(-1181.30, -896.24, 13.99, 33.0), storagePos = vec4(-1181.23, -898.89, 13.99, 125.0), size = {x = 0.95, y = 0.25, z = 0.95}},
		},
		DirtySpots = {
			Ground = {
				vec4(-1194.58, -894.97, 13.88, 269.06),
				vec4(-1198.94, -901.95, 13.88, 213.00),
				vec4(-1182.75, -895.86, 13.88, 307.59),
				vec4(-1191.91, -898.08, 13.88, 148.30),
				vec4(-1179.65, -891.08, 13.88, 40.33),
				vec4(-1183.11, -889.36, 13.88, 71.70),
				vec4(-1187.73, -889.26, 13.88, 99.25),
				vec4(-1193.97, -890.23, 13.88, 97.88),
				vec4(-1194.05, -886.55, 13.88, 327.98),
				vec4(-1189.32, -883.43, 13.88, 302.83),
				vec4(-1184.78, -883.00, 13.88, 225.79),
				vec4(-1203.28, -894.05, 13.88, 39.82),
				vec4(-1203.50, -890.41, 13.88, 109.41),
				vec4(-1201.48, -892.74, 13.88, 151.25),
				vec4(-1182.53, -886.90, 13.88, 206.60),
			},
			Tables = {
				vec4(-1196.14, -887.00, 13.88, 42.15),
				vec4(-1193.21, -885.11, 13.88, 37.24),
				vec4(-1190.26, -883.13, 13.88, 37.10),
				vec4(-1187.40, -881.19, 13.88, 37.08),
				vec4(-1187.82, -883.07, 13.88, 219.08),
				vec4(-1190.85, -885.12, 13.88, 220.43),
				vec4(-1184.75, -897.85, 13.88, 211.34),
				vec4(-1181.84, -895.89, 13.88, 218.02),
				vec4(-1178.89, -893.90, 13.88, 212.17),
				vec4(-1180.77, -893.56, 13.88, 39.97),
				vec4(-1183.64, -895.50, 13.88, 29.74),
				vec4(-1192.21, -893.19, 13.88, 151.79),
				vec4(-1194.08, -892.67, 13.88, 159.06),
				vec4(-1196.28, -892.06, 13.88, 157.54),
				vec4(-1194.46, -894.19, 13.88, 350.62),
			},
		},
	},
	
	Trash = {
		Positions = {
			{coords = vec4(-1183.98, -892.42, 13.55, 34.0), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1187.78, -886.36, 13.55, 34.0), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1191.42, -901.38, 13.55, 34.0), size = {x = 1.75, y = 1.30, z = 1.15}},
			{coords = vec4(-1189.35, -899.78, 13.55, 34.0), size = {x = 1.75, y = 1.30, z = 1.15}},
			{coords = vec4(-1183.95, -881.63, 13.75, 34.0), size = {x = 0.62, y = 0.62, z = 0.75}},
			{coords = vec4(-1193.81, -902.32, 13.75, 34.0), size = {x = 0.75, y = 0.75, z = 0.75}},
		},
	},

	HotTables = {
		Positions = {
			{coords = vec4(-1195.95, -896.38, 14.00, 75.00), size = {x = 0.90, y = 1.40, z = 1.50}},
			{coords = vec4(-1194.39, -896.66, 14.00, 75.00), size = {x = 0.90, y = 1.40, z = 1.50}},
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
			{item = 'cleansponge', label = 'Clean Sponge', icon = 'cleansponge.png', price = 2},
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
			{coords = vec4(-1177.44, -889.26, 13.78, 355.0), pedPos = vec4(-1177.35, -888.74, 13.78, 175.0), size = {x = 0.85, y = 0.85, z = 1.50}},
		},
	},

	NpcEmployee = {
		Positions = {
			{coords = vec4(-1197.78, -893.25, 13.80, 355.0), hotTablePos = vec4(-1195.81, -895.74, 13.80, 170.0), size = {x = 1.20, y = 1.20, z = 1.50}},
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
			{coords = vec4(-1186.54, -885.20, 14.22, 125.0), size = {x = 0.45, y = 0.8, z = 1.50}},
			{coords = vec4(-1189.36, -887.11, 14.22, 125.0), size = {x = 0.45, y = 0.8, z = 1.50}},
			{coords = vec4(-1182.25, -891.56, 14.22, 125.0), size = {x = 0.45, y = 0.8, z = 1.50}},
			{coords = vec4(-1185.08, -893.46, 14.22, 125.0), size = {x = 0.45, y = 0.8, z = 1.50}},
		},
	},
}