--[[ Kingmaps Burger Shot MLO - https://kingmaps.net/products/6167902 ]]--

return {
	Blip = {
		coords = vec3(-1184.79, -885.14, 14.03),
	},
	
	DutySystem = {
		coords = vec4(-1190.42, -907.04, 14.39, 235.00),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.45, y = 0.4, z = 1.2},
		},
	},

	BossMenu = {
		coords = vec4(-1200.9, -894.62, 13.72, 180.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.3, y = 1.2, z = 1.2},
		},
	},

	LockerRoom = {
		coords = vec4(-1187.21, -899.0, 13.98, 180.00),
		target = {
			icon = 'fas fa-tshirt',
			size = {x = 1.0, y = 0.5, z = 1.0},
		},
	},

	Storage = {
		coords = vec4(-1198.87, -896.64, 13.71, 180.00),
		target = {
			icon = 'fas fa-box',
			size = {x = 0.5, y = 2.8, z = 1.85},
		},
	},

	Garage = {
		spawn = {
			vec4(-1169.12, -894.24, 13.68, 34.20),
			vec4(-1163.80, -891.09, 13.71, 124.18),
			vec4(-1166.15, -888.30, 13.69, 122.15),
		},
		coords = vec4(-1169.82, -900.52, 14.18, 180.00),
		target = {
			icon = 'fas fa-car',
			size = {x = 0.8, y = 0.7, z = 1.85},
		},
	},

	BathRooms = {
		Toilets = {
			-- Female
			{coords = vec4(-1183.35, -901.33, 13.39, 142.00), pedPos = vec4(-1182.92, -901.07, 13.91, 301.71), size = {x = 0.55, y = 0.70, z = 0.95}},
			{coords = vec4(-1184.13, -900.2, 13.39, 122.00), pedPos = vec4(-1183.68, -899.97, 13.91, 302.22), size = {x = 0.55, y = 0.70, z = 0.95}},
			-- Male
			{coords = vec4(-1178.89, -896.7, 13.39, 311.00), pedPos = vec4(-1179.35, -896.99, 13.91, 124.38), size = {x = 0.55, y = 0.70, z = 0.95}},
			{coords = vec4(-1178.16, -897.85, 13.39, 313.00), pedPos = vec4(-1178.62, -898.10, 13.91, 128.22), size = {x = 0.55, y = 0.70, z = 0.95}},

			{coords = vec4(-1180.21, -894.32, 13.75, 312.35), pedPos = vec4(-1180.61, -894.64, 13.91, 132.35), size = {x = 0.55, y = 0.70, z = 0.95}, poop = true},
			{coords = vec4(-1179.79, -894.98, 13.74, 312.00), pedPos = vec4(-1180.18, -895.38, 13.91, 132.35), size = {x = 0.55, y = 0.70, z = 0.95}, poop = true},
			{coords = vec4(-1179.29, -895.67, 13.76, 312.00), pedPos = vec4(-1179.73, -895.96, 13.91, 132.35), size = {x = 0.55, y = 0.70, z = 0.95}, poop = true},
		},
		
		Sinks = {
			-- Bathroom
				-- Female
			{coords = vec4(-1183.5, -896.52, 13.85, 310.00), pedPos = vec4(-1184.03, -896.87, 13.91, 300.00), size = {x = 0.60, y = 0.70, z = 1.05}},
			{coords = vec4(-1183.01, -897.23, 13.85, 310.00), pedPos = vec4(-1183.45, -897.60, 13.91, 305.00), size = {x = 0.60, y = 0.70, z = 1.05}},
				-- Male
			{coords = vec4(-1182.31, -896.72, 13.85, 132.34), pedPos = vec4(-1181.78, -896.65, 13.91, 123.00), size = {x = 0.60, y = 0.70, z = 1.05}},
			{coords = vec4(-1182.99, -897.24, 13.85, 132.34),  pedPos = vec4(-1183.59, -897.51, 13.91, 305.00), size = {x = 0.60, y = 0.70, z = 1.05}},
		
			-- Kitchen
			{coords = vec4(-1193.45, -903.0, 13.91, 45.00), pedPos = vec4(-1193.13, -903.61, 13.91, 28.52), size = {x = 1.20, y = 0.80, z = 1.05}, job = true},
		}
		
	},

	TablesAndChairs = {
		Tables = {
				-- Northern Door Wall
			{coords = vec4(-1188.81, -883.73, 13.71, 30.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1191.4, -885.23,  13.71, 30.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1193.84, -886.91, 13.71, 30.00), size = {x = 1.0, y = 0.7, z = 0.25}},
				-- Northern Center Row
			{coords = vec4(-1188.25, -889.04, 13.71, 212.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1188.92, -889.5,  13.71, 212.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1189.76, -889.99, 13.71, 212.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1190.36, -890.5,  13.71, 212.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1191.05, -890.95, 13.71, 212.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1191.68, -891.39, 13.71, 212.00), size = {x = 1.0, y = 0.7, z = 0.25}},
				-- Southern Center Row
			{coords = vec4(-1186.62, -891.52, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1187.28, -891.92, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1188.12, -892.46, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1188.74, -892.88, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1188.74, -892.88, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1189.46, -893.41, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
			{coords = vec4(-1190.06, -893.83, 13.71, 32.00), size = {x = 1.0, y = 0.7, z = 0.25}},
				-- Eastern Door Wall
			{coords = vec4(-1186.49, -885.37, 13.96, 305.00), size = {x = 1.0, y = 0.5, z = 0.25}},
			{coords = vec4(-1182.98, -890.58, 13.96, 305.00), size = {x = 1.0, y = 0.5, z = 0.25}},
			{coords = vec4(-1181.92, -892.18, 13.96, 305.00), size = {x = 1.0, y = 0.5, z = 0.25}},
		},
		Chairs = {
				-- Northern Wall
					--Booth 1
			{coords = vec4(-1194.49, -887.91, 13.40, 305.81), leavePos = vec4(-1194.11, -888.44, 13.91, 216.86),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.10, -887.09, 13.43, 305.89), leavePos = vec4(-1194.10, -888.47, 13.91, 216.51),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1193.00, -886.63, 13.42, 124.88), leavePos = vec4(-1192.49, -887.31, 13.91, 215.21),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1193.50, -885.83, 13.43, 127.01), leavePos = vec4(-1192.50, -887.31, 13.91, 214.11),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Booth 2
			{coords = vec4(-1192.03, -886.15, 13.42, 305.87), leavePos = vec4(-1191.54, -886.77, 13.91, 34.72),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.62, -885.38, 13.43, 303.90), leavePos = vec4(-1191.54, -886.77, 13.91, 34.72),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.49, -885.03, 13.42, 125.64), leavePos = vec4(-1190.01, -885.69, 13.91, 219.27),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.01, -884.12, 13.43, 125.99), leavePos = vec4(-1190.01, -885.69, 13.91, 219.27),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Booth 3
			{coords = vec4(-1189.58, -884.52, 13.42, 304.40), leavePos = vec4(-1189.06, -885.03, 13.91, 36.25),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.12, -883.66, 13.43, 304.26), leavePos = vec4(-1189.06, -885.03, 13.91, 36.25),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.64, -882.47, 13.42, 124.90), leavePos = vec4(-1187.58, -884.12, 13.91, 119.91),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.09, -883.34, 13.43, 125.31), leavePos = vec4(-1187.58, -884.12, 13.91, 119.91),  size = {x = 0.52, y = 0.6, z = 1.05}},
				-- Eastern Wall
					--Table 1
			{coords = vec4(-1187.47, -884.96, 13.66, 305.58), leavePos = vec4(-1187.83, -885.18, 13.91, 125.26),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.93, -885.67, 13.66, 303.90), leavePos = vec4(-1187.33, -885.91, 13.89, 123.69),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.46, -886.47, 13.66, 306.76), leavePos = vec4(-1186.76, -886.76, 13.91, 123.81),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Table 2
			{coords = vec4(-1183.91, -890.16, 13.66, 302.80), leavePos = vec4(-1183.76, -891.22, 13.91, 124.01),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.33, -891.03, 13.66, 302.80), leavePos = vec4(-1183.76, -891.22, 13.91, 124.01),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.91, -891.70, 13.66, 305.00), leavePos = vec4(-1183.26, -891.95, 13.91, 124.01),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.91, -891.70, 13.66, 305.00), leavePos = vec4(-1183.26, -891.95, 13.91, 124.01),  size = {x = 0.52, y = 0.6, z = 1.05}},
				-- Northern Central
					--Table 1
			{coords = vec4(-1187.69, -889.74, 13.37, 34.14),  leavePos = vec4(-1184.29, -890.46, 13.91, 124.01),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.64, -888.64, 13.41, 220.60), leavePos = vec4(-1188.19, -888.28, 13.91, 307.09),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.22, -889.01, 13.37, 215.86), leavePos = vec4(-1189.32, -889.06, 14.45, 215.86),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.45, -890.12, 13.38, 35.56),  leavePos = vec4(-1187.20, -889.34, 13.91, 304.18),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Table 2
			{coords = vec4(-1189.26, -890.58, 13.37, 34.43),  leavePos = vec4(-1187.23, -889.34, 13.91, 301.75),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.04, -889.60, 13.40, 219.68), leavePos = vec4(-1190.31, -889.13, 13.91, 37.29),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.68, -889.99, 13.37, 213.92), leavePos = vec4(-1191.02, -889.60, 13.91, 33.92),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.87, -891.09, 13.38, 34.55),  leavePos = vec4(-1191.91, -892.44, 13.91, 128.58),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Table 3
			{coords = vec4(-1191.44, -890.53, 13.41, 213.38), leavePos = vec4(-1191.70, -890.08, 13.91, 34.52),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.59, -891.59, 13.38, 35.90),  leavePos = vec4(-1191.94, -892.44, 13.91, 127.65),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.14, -891.02, 13.40, 214.00), leavePos = vec4(-1192.43, -890.48, 13.91, 34.55),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.23, -891.99, 13.37, 37.15),  leavePos = vec4(-1191.91, -892.44, 13.91, 128.58),  size = {x = 0.52, y = 0.6, z = 1.05}},
				-- Southern Central
					--Table 1
			{coords = vec4(-1187.09, -890.84, 13.38, 217.36), leavePos = vec4(-1186.43, -890.53, 13.91, 303.88),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.21, -892.06, 13.41, 33.43), leavePos = vec4(-1185.94, -892.56, 13.91, 214.82),   size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.79, -891.36, 13.38, 216.61), leavePos = vec4(-1186.44, -890.47, 13.91, 305.78),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.97, -892.55, 13.37, 36.97),  leavePos = vec4(-1186.63, -892.97, 13.91, 215.05),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Table 2
			{coords = vec4(-1187.73, -893.04, 13.37, 37.79),  leavePos = vec4(-1187.36, -893.47, 13.91, 216.18),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.52, -891.81, 13.37, 215.05), leavePos = vec4(-1186.46, -890.44, 13.91, 305.11),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.19, -892.34, 13.3, 216.65), leavePos = vec4(-1191.11, -893.61, 13.91, 125.59),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.37, -893.46, 13.37, 37.79),  leavePos = vec4(-1188.07, -893.95, 13.91, 36.09),  size = {x = 0.52, y = 0.6, z = 1.05}},
					--Table 3
			{coords = vec4(-1189.92, -892.83, 13.37, 219.12), leavePos = vec4(-1191.22, -893.63, 13.91, 123.05),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.15, -894.02, 13.37, 36.24),  leavePos = vec4(-1188.81, -894.45, 13.91, 216.02),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.8, -894.47, 13.37, 33.42),  leavePos = vec4(-1189.51, -894.92, 13.91, 215.64),  size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.56, -893.31, 13.37, 214.91), leavePos = vec4(-1191.14, -893.58, 13.91, 123.36),  size = {x = 0.52, y = 0.6, z = 1.05}},
		},
	},

	Crafting = {
		Fryer = {
			Positions = {
				{coords = vec4(-1193.67, -901.67, 13.77, 228.99), pedPos = vec4(-1193.74, -900.77, 13.91, 214.0), size = {x = 0.5, y = 1.5, z = 1.2}},
			},
			Food = {
				{
					label = 'Fries',
					item = 'friedfries',
					prop = 'prop_food_bs_chips',
					amount = 1,
					image = 'friedfries.png',
					cookingTime = 5, -- Cooking time [in seconds].
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
					cookingTime = 10, -- Cooking time [in seconds].
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
					cookingTime = 10, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawfishstrip', label = 'Raw fish strip', amount = 1},
					},
				},
			},
		},

		Grill = {
			Positions = {
				{coords = vec4(-1197.67, -902.37, 14.02, 125.12), pedPos = vec4(-1197.05, -901.99, 13.91, 125.12), size = {x = 1.13, y = 1.5, z = 1.5}},
			},
			Food = {
				{
					label = 'Burger Meat',
					item = 'grilledburgermeat',
					amount = 1,
					image = 'grilledburgermeat.png',
					cookingTime = 10, -- Cooking time [in seconds].
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
					cookingTime = 8, -- Cooking time [in seconds].
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
					cookingTime = 5, -- Cooking time [in seconds].
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
					cookingTime = 8, -- Cooking time [in seconds].
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
					cookingTime = 3, -- Cooking time [in seconds].
					ingredients = {
						{item = 'slicedburgerbun', label = 'Sliced burger bun', amount = 5},
						{item = 'butter', label = 'Cooking butter', amount = 1},
					},
				},
			},
		},

		CuttingTable = {
			Positions = {
                {coords = vec4(-1198.54, -901.17, 13.97, 124.96), pedPos = vec4(-1198.12, -900.89, 13.91, 129.75), size = {x = 1.13, y = 1.5, z = 1.2}},
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
					cookingTime = 3, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawburgerbun', label = 'Burger bun', amount = 1},
					},
				},
				{
					label = 'Sliced Sandwich Bread',
					item = 'slicedsandwichbread',
					amount = 2,
					image = 'slicedsandwichbread.png',
					cookingTime = 3, -- Cooking time [in seconds].
					ingredients = {
						{item = 'rawsandwichbread', label = 'Sandwich bread', amount = 1},
					},
				},
			},
		},

		Drinks = {
			Positions = {
				{coords = vec4(-1190.11, -906.13, 14.51, 306.00), pedPos = vec4(-1190.52, -906.31, 13.91, 302.06), size = {x = 0.5, y = 0.95, z = 0.95}},
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
				{coords = vec4(-1193.88, -898.72, 13.9, 39.29), pedPos = vec4(-1193.15, -898.32, 13.91, 127.26), size = {x = 1.2, y = 1.05, z = 1.05}},
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
                {coords = vec4(-1196.46, -893.98, 13.63, 36.67), pedPos = vec4(-1196.07, -894.50, 13.91, 36.67), object = {use = true, coords = vector3(-1196.51, -893.88, 12.91), xRot = 0.0, yRot = 0.0, zRot = 35.0}, size = {x = 1.35, y = 1.75, z = 1.85}},
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
                {coords = vec4(-1190.47, -905.22, 14.49, 306.00), pedPos = vec4(-1191.1, -905.46, 13.91, 311.58), size = {x = 1.5, y = 1.5, z = 1.5}},
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
			{coords = vec4(-1191.98, -897.84, 14.07, 32.46), size = {x = 1, y = 1, z = 1}},
			{coords = vec4(-1192.87, -896.5, 14.07, 33.80), size = {x = 1, y = 1, z = 1}},
			{coords = vec4(-1193.81, -895.12, 14.07, 34.19), size = {x = 1, y = 1, z = 1}},
			{coords = vec4(-1194.2, -905.91, 14.38, 107.75), size = {x = 1, y = 1, z = 1}},
		},
	},

	PoliceAlerts = {
		Alerts = {
			{coords = vec4(-1197.52, -896.09, 14.23, 124.3), object = {use = true, coords = vector3(-1197.50, -896.08, 14.23), xRot = 0.21, yRot = -0.26, zRot = 124.0}, size = {x = 0.55, y = 0.55, z = 0.55}},
		},
	},

	Delivery = {
		StartDelivery = {
            {coords = vec4(-1190.99, -900.71, 14.27, 34.54), pedPos = vec4(-1190.82, -900.93, 13.91, 34.54), object = {use = true, coords = vector3(-1190.99, -900.72, 14.31), xRot = 90.0, yRot = 127.0, zRot = -93.0}, size = {x = 0.25, y = 0.25, z = 0.45}},
		},
	},

	Missions = {
		StartMission = {
            {coords = vec4(-1199.08, -900.35, 13.91, 33.63), pedPos = vec4(-1198.43, -900.26, 13.91, 125.36), storagePos = vec4(-1196.93, -893.69, 14.12, 354.01), size = {x = 0.95, y = 0.25, z = 0.95}},
		},
		DirtySpots = {
			Ground = {
				vec4(-1188.15, -896.02, 13.91, 328.00),
				vec4(-1185.72, -894.12, 13.91, 293.62),
				vec4(-1184.51, -898.04, 13.91, 200.35),
				vec4(-1180.84, -895.70, 13.91, 304.55),
				vec4(-1184.46, -891.67, 13.91, 35.45),
				vec4(-1186.13, -889.21, 13.91, 34.02),
				vec4(-1188.20, -886.75, 13.91, 41.85),
				vec4(-1190.43, -887.79, 13.91, 111.16),
				vec4(-1192.92, -889.19, 13.91, 119.91),
				vec4(-1195.57, -889.91, 13.91, 103.01),
				vec4(-1197.70, -890.25, 13.91, 85.94),
				vec4(-1193.03, -893.05, 13.91, 137.65),
				vec4(-1191.70, -895.76, 13.91, 207.26),
				vec4(-1188.20, -900.58, 13.91, 305.98),
				vec4(-1198.69, -899.14, 13.91, 223.03),
			},
			Tables = {
				vec4(-1187.63, -888.68, 13.91, 110.00),
				vec4(-1185.99, -891.09, 13.91, 110.00),
				vec4(-1190.61, -894.21, 13.91, 300.00),
				vec4(-1192.38, -891.76, 13.91, 309.18),
				vec4(-1193.21, -888.0, 13.91, 30.00),
				vec4(-1190.82, -886.3, 13.91, 30.00),
				vec4(-1188.4, -884.58, 13.91, 30.00),
				vec4(-1183.61, -890.57, 13.91, 296.00),
				vec4(-1182.65, -892.18, 13.91, 296.00),
				vec4(-1193.48, -894.25, 13.91, 110.00),
				vec4(-1192.72, -895.41, 13.91, 110.00),
				vec4(-1191.79, -896.75, 13.91, 110.00),

			},
		},
	},
	
	Trash = {
		Positions = {
			{coords = vec4(-1196.0, -892.31, 14.22, 209.83), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1198.0, -889.0, 14.2, 218.33), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1186.47, -896.73, 14.21, 27.43), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1184.0, -895.06, 14.21, 218.42), size = {x = 1.32, y = 0.60, z = 1.15}},
		},
	},

	HotTables = {
		Positions = {
            {coords = vec4(-1195.55, -903.27, 13.99, 129.53), size = {x = 1.20, y = 2.20, z = 2.50}},
			{coords = vec4(-1196.28, -899.48, 14.45, 129.53), size = {x = 1.20, y = 2.20, z = 2.50}},
			{coords = vec4(-1196.33, -900.6, 14.38, 129.53), size = {x = 1.20, y = 2.20, z = 2.50}},
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
			{coords = vec4(-1183.96, -885.70, 13.87, 272.11), pedPos = vec4(-1183.39, -885.73, 13.87, 100.09), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
	},

	NpcEmployee = {
		Positions = {
			{coords = vec4(-1186.91, -897.44, 13.91, 57.77), hotTablePos = vec4(-1196.33, -900.6, 14.38, 129.53), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
	},
	
	MenuList = {   -- Items displayed in food menu + npc employee menu.
		Items = {
			-- Drinks
			{category = 'Drinks', items = {
				{item = 'burgershotcola', label = 'eCola', icon = 'burgershotcola.png', price = 10},
				{item = 'burgershotcolalight', label = 'eCola Light', icon = 'burgershotcolalight.png', price = 10},
				{item = 'burgershotsprunk', label = 'Sprunk', icon = 'burgershotsprunk.png', price = 10},
				{item = 'burgershotorang_o_tang', label = 'Orang O Tang', icon = 'burgershotorang_o_tang.png', price = 10},
			}},
		
			-- Sides
			{category = 'Sides', items = {
				{item = 'friedfries', label = 'Fries', icon = 'friedfries.png', price = 10},
				{item = 'friedonionring', label = 'Onion Ring', icon = 'friedonionring.png', price = 12},
				{item = 'friedmozzarellastick', label = 'Mozzarella Stick', icon = 'friedmozzarellastick.png', price = 12},
				{item = 'burgershotfoodtray', label = 'Food Tray', icon = 'burgershotfoodtray.png', price = 45},
			}},
		
			-- Burgers
			{category = 'Burgers', items = {
				{item = 'classicBurger', label = 'GrillMaster Classic Burger', icon = 'classicBurger.png', price = 25},
				{item = 'classicburgerspicy', label = 'GrillMaster Spicy Classic Burger', icon = 'classicburgerspicy.png', price = 25},
				{item = 'chickenburger', label = 'Loaded Chicken Avenger', icon = 'chickenburger.png', price = 25},
				{item = 'chickenburgerspicy', label = 'Loaded Spicy Chicken Avenger', icon = 'chickenburgerspicy.png', price = 35},
				{item = 'fishburger', label = 'Ocean Catch Burger', icon = 'fishburger.png', price = 30},
				{item = 'obeseburger', label = 'The Cardiac Crusher', icon = 'obeseburger.png', price = 35},
				{item = 'steakburger', label = 'Steakhouse Supreme Burger', icon = 'steakburger.png', price = 45},
				{item = 'reverseburger', label = 'Reverse Burger', icon = 'reverseburger.png', price = 20},
				{item = 'burgershotsandwich', label = 'Sunrise Ham Melt', icon = 'burgershotsandwich.png', price = 25},
			}},
		},
		Positions = {
			{coords = vec4(-1187.55, -898.07, 14.45, 214.67), size = {x = 0.5, y = 0.5, z = 1.50}},
			{coords = vec4(-1188.84, -898.95, 14.45, 213.77), size = {x = 0.5, y = 0.5, z = 1.50}},
		},
	},
}