--[[ GN Burger Shot MLO - https://fivem.gn.studio/package/4841796 ]]--

return {
	Blip = {
		coords = vec3(-1184.79, -885.14, 14.03),
	},
	
	DutySystem = {
		coords = vec4(-1183.63, -896.54, 14.35, 125.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.2, y = 1.2, z = 1.2},
		},
	},

	BossMenu = {
		coords = vec4(-1178.71, -896.90, 13.85, 35.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 1.2, y = 2.45, z = 0.5},
		},
	},

	LockerRoom = {
		coords = vector4(-1181.42, -899.65, 13.97, 215.0),
		target = {
			icon = 'fas fa-tshirt',
			size = {x = 0.8, y = 4.3, z = 2.15},
		},
	},

	Storage = {
		coords = vec4(-1201.15, -901.74, 13.97, 215.0),
		target = {
			icon = 'fas fa-box',
			size = {x = 0.8, y = 3.55, z = 2.15},
		},
	},

	Garage = {
		spawn = {
			vec4(-1169.12, -894.24, 13.68, 34.20),
			vec4(-1163.80, -891.09, 13.71, 124.18),
			vec4(-1166.15, -888.30, 13.69, 122.15),
		},
		coords = vec4(-1178.15, -892.94, 13.84, 125.00),
		target = {
			icon = 'fas fa-car',
			size = {x = 0.8, y = 0.5, z = 1.85},
		},
	},

	BathRooms = {
		Toilets = {
            {coords = vec4(-1205.90, -890.46, 13.35, 215.0), pedPos = vec4(-1205.66, -890.86, 13.79, 215.0), size = {x = 0.55, y = 0.7, z = 0.95}},
            {coords = vec4(-1204.53, -889.52, 13.35, 215.0), pedPos = vec4(-1204.29, -889.89, 13.79, 215.0), size = {x = 0.55, y = 0.7, z = 0.95}},
            {coords = vec4(-1201.86, -887.71, 13.35, 215.0), pedPos = vec4(-1201.66, -888.14, 13.79, 215.0), size = {x = 0.55, y = 0.7, z = 0.95}},
            {coords = vec4(-1200.48, -886.76, 13.35, 215.0), pedPos = vec4(-1200.15, -887.11, 13.79, 215.0), size = {x = 0.55, y = 0.7, z = 0.95}},
            {coords = vec4(-1202.42, -891.18, 13.67, 303.0), pedPos = vec4(-1202.83, -891.48, 13.97, -240.0), size = {x = 0.55, y = 0.7, z = 0.95}, poop = true},
            {coords = vec4(-1201.67, -891.98, 13.67, 303.0), pedPos = vec4(-1202.22, -892.26, 13.79, -240.0), size = {x = 0.55, y = 0.7, z = 0.95}, poop = true},
		},
		Sinks = {
            -- Bathroom
            {coords = vec4(-1201.23, -891.15, 13.55, 303.0), pedPos = vec4(-1200.72, -890.79, 13.79, 120.0), size = {x = 0.60, y = 0.7, z = 1.05}},
            {coords = vec4(-1201.97, -890.08, 13.55, 303.0), pedPos = vec4(-1201.50, -889.79, 13.79, 120.0), size = {x = 0.60, y = 0.7, z = 1.05}},
            {coords = vec4(-1205.24, -893.93, 13.55, 303.0), pedPos = vec4(-1204.83, -893.56, 13.79, 120.0), size = {x = 0.60, y = 0.7, z = 1.05}},
            {coords = vec4(-1206.01, -892.83, 13.55, 303.0), pedPos = vec4(-1205.58, -892.50, 13.79, 120.0), size = {x = 0.60, y = 0.7, z = 1.05}},

            -- Kitchen
            {coords = vec4(-1197.49, -902.72, 13.55, 214.0), pedPos = vec4(-1197.92, -902.17, 13.99, 214.0), size = {x = 1.20, y = 0.8, z = 1.05}, job = true},
		},
	},

	TablesAndChairs = {
		Tables = {
            {coords = vec4(-1191.97, -886.80, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1189.98, -885.51, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1193.15, -882.50, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1191.25, -881.15, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1186.95, -882.02, 13.72, 33.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1188.82, -879.95, 13.72, 304.00), size = {x = 0.75, y = 0.70, z = 0.25}},
            {coords = vec4(-1185.72, -901.88, 13.72, 304.00), size = {x = 0.75, y = 0.70, z = 0.25}},
            {coords = vec4(-1186.36, -901.07, 13.72, 304.00), size = {x = 0.75, y = 0.70, z = 0.25}},
            {coords = vec4(-1188.63, -878.77, 13.92, 304.00), size = {x = 0.55, y = 0.55, z = 0.25}},
            {coords = vec4(-1184.43, -889.77, 13.72, 33.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1183.02, -891.73, 13.72, 33.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1181.64, -888.84, 14.08, 304.00), size = {x = 5.35, y = 0.50, z = 0.25}},
            {coords = vec4(-1187.11, -889.68, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1189.04, -890.98, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1184.66, -893.32, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1186.60, -894.63, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1188.49, -895.83, 13.72, 304.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1190.13, -897.52, 13.72, 33.00), size = {x = 1.35, y = 0.70, z = 0.25}},
            {coords = vec4(-1192.35, -896.92, 14.10, 304.00), size = {x = 0.95, y = 0.70, z = 0.25}},
            {coords = vec4(-1193.41, -895.37, 14.10, 304.00), size = {x = 0.75, y = 0.70, z = 0.25}},
            {coords = vec4(-1194.43, -893.85, 14.10, 304.00), size = {x = 0.95, y = 0.70, z = 0.25}},
		},
		Chairs = {
            {coords = vec4(-1192.36, -887.55, 13.51, 303.0), leavePos = vec4(-1193.15, -886.41, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.72, -886.93, 13.51, 303.0), leavePos = vec4(-1193.15, -886.41, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.35, -886.27, 13.51, 303.0), leavePos = vec4(-1191.20, -885.02, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.83, -885.57, 13.51, 303.0), leavePos = vec4(-1191.20, -885.02, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1194.12, -882.54, 13.51, 303.0), leavePos = vec4(-1193.27, -883.65, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1193.71, -883.07, 13.51, 303.0), leavePos = vec4(-1193.27, -883.65, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.08, -881.25, 13.51, 303.0), leavePos = vec4(-1191.32, -882.36, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.65, -881.87, 13.51, 303.0), leavePos = vec4(-1191.32, -882.36, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.88, -891.23, 13.51, 303.0), leavePos = vec4(-1189.01, -892.35, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.55, -891.73, 13.51, 303.0), leavePos = vec4(-1189.01, -892.35, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.96, -889.84, 13.51, 303.0), leavePos = vec4(-1187.02, -890.89, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.58, -890.35, 13.51, 303.0), leavePos = vec4(-1187.02, -890.89, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.04, -893.97, 13.51, 303.0), leavePos = vec4(-1185.874, -892.8782, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.49, -893.29, 13.51, 303.0), leavePos = vec4(-1185.874, -892.8782, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.938, -895.3461, 13.51, 303.0), leavePos = vec4(-1187.837, -894.2255, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.369, -894.8286, 13.51, 303.0), leavePos = vec4(-1187.837, -894.2255, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.826, -896.4906, 13.51, 303.0), leavePos = vec4(-1189.79, -895.4911, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.728, -881.8166, 13.51, 125.0), leavePos = vec4(-1191.916, -882.8183, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1192.473, -882.3937, 13.51, 125.0), leavePos = vec4(-1191.916, -882.8183, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.835, -880.5061, 13.51, 125.0), leavePos = vec4(-1190.077, -881.5326, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1190.505, -880.9645, 13.51, 125.0), leavePos = vec4(-1190.077, -881.5326, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.157, -886.656, 13.51, 125.0), leavePos = vec4(-1191.993, -885.5432, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1191.491, -886.1347, 13.51, 125.0), leavePos = vec4(-1191.993, -885.5432, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.266, -885.2455, 13.51, 125.0), leavePos = vec4(-1189.96, -884.2488, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.571, -884.7816, 13.51, 125.0), leavePos = vec4(-1189.96, -884.2488, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.592, -890.3468, 13.51, 125.0), leavePos = vec4(-1187.778, -891.4947, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.306, -890.8557, 13.51, 125.0), leavePos = vec4(-1187.778, -891.4947, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.618, -889.0687, 13.51, 125.0), leavePos = vec4(-1185.934, -890.1367, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.372, -889.6767, 13.51, 125.0), leavePos = vec4(-1185.934, -890.1367, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.848, -893.2245, 13.51, 125.0), leavePos = vec4(-1184.641, -892.0114, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1184.226, -892.621, 13.51, 125.0), leavePos = vec4(-1184.641, -892.0114, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.875, -894.4136, 13.51, 125.0), leavePos = vec4(-1186.702, -893.459, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.197, -893.9126, 13.51, 125.0), leavePos = vec4(-1186.702, -893.459, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.776, -895.7803, 13.51, 125.0), leavePos = vec4(-1188.511, -894.7147, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.075, -895.2184, 13.51, 125.0), leavePos = vec4(-1188.511, -894.7147, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1184.21, -890.6669, 13.51, 35.0), leavePos = vec4(-1183.138, -889.8774, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.661, -890.2379, 13.51, 35.0), leavePos = vec4(-1183.138, -889.8774, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.246, -882.2925, 13.51, 35.0), leavePos = vec4(-1187.31, -883.1843, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.813, -882.7258, 13.51, 35.0), leavePos = vec4(-1187.31, -883.1843, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1182.936, -892.5873, 13.51, 35.0), leavePos = vec4(-1181.779, -891.8553, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1182.452, -892.2589, 13.51, 35.0), leavePos = vec4(-1181.779, -891.8553, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1185.147, -889.4383, 13.51, 215.0), leavePos = vec4(-1184.002, -888.6013, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1184.525, -889.0256, 13.51, 215.0), leavePos = vec4(-1184.002, -888.6013, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1186.995, -881.173, 13.51, 215.0), leavePos = vec4(-1188.185, -881.9173, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.623, -881.5104, 13.51, 215.0), leavePos = vec4(-1188.185, -881.9173, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.22, -879.2394, 13.51, 215.0), leavePos = vec4(-1189.503, -880.303, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1189.752, -879.6539, 13.51, 215.0), leavePos = vec4(-1189.503, -880.303, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.809, -891.3115, 13.51, 215.0), leavePos = vec4(-1182.67, -890.5416, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.207, -890.9308, 13.51, 215.0), leavePos = vec4(-1182.67, -890.5416, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1188.342, -879.3268, 13.51, 125.0), leavePos = vec4(-1188.271, -880.5804, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1187.889, -879.8872, 13.51, 125.0), leavePos = vec4(-1188.271, -880.5804, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1183.223, -887.2845, 13.81, -55.0), leavePos = vec4(-1183.515, -887.5861, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1182.544, -888.2347, 13.81, -55.0), leavePos = vec4(-1182.984, -888.448, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1181.779, -889.2723, 13.81, -55.0), leavePos = vec4(-1182.112, -889.4961, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1181.211, -890.0652, 13.81, -55.0), leavePos = vec4(-1181.519, -890.2595, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1180.604, -891.0006, 13.81, -55.0), leavePos = vec4(-1180.934, -891.248, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
            {coords = vec4(-1177.85, -896.32, 13.51, -260.0), leavePos = vec4(-1178.105, -895.4908, 13.99, 280.0), size = {x = 0.72, y = 0.72, z = 1.55}},
            {coords = vec4(-1179.418, -898.167, 13.51, 320.0), leavePos = vec4(-1179.973, -898.5982, 13.99, 280.0), size = {x = 0.72, y = 0.72, z = 1.55}},
            {coords = vec4(-1180.042, -897.1981, 13.51, 295.0), leavePos = vec4(-1180.654, -897.4776, 13.99, 290.0), size = {x = 0.72, y = 0.72, z = 1.55}},
            {coords = vec4(-1184.998, -901.5357, 13.51, 125.0), leavePos = vec4(-1186.176, -899.9038, 13.99, 280.0), size = {x = 0.72, y = 0.72, z = 1.55}},
            {coords = vec4(-1185.675, -900.6625, 13.51, 125.0), leavePos = vec4(-1186.176, -899.9038, 13.99, 280.0), size = {x = 0.72, y = 0.72, z = 1.55}},
            {coords = vec4(-1186.606, -902.6122, 13.51, 303.0), leavePos = vec4(-1187.728, -900.9241, 13.99, 280.0), size = {x = 0.72, y = 0.72, z = 1.55}},
            {coords = vec4(-1187.261, -901.6512, 13.51, 303.0), leavePos = vec4(-1187.728, -900.9241, 13.99, 280.0), size = {x = 0.72, y = 0.72, z = 1.55}},
		},
	},

	Crafting = {
		Fryer = {
			Positions = {
                {coords = vec4(-1200.87, -896.85, 13.55, 124.0), pedPos = vec4(-1200.57, -897.34, 13.95, 33.0), size = {x =1.13, y = 1.5, z = 1.2}},
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
                {coords = vec4(-1198.29, -895.06, 13.55, 124.0), pedPos = vec4(-1197.81, -895.67, 13.95, 33.0), size = {x = 1.13, y = 1.5, z = 1.2}},
                {coords = vec4(-1199.20, -895.65, 13.55, 124.0), pedPos = vec4(-1198.83, -896.18, 13.95, 33.0), size = {x = 0.55, y = 0.55, z = 1.2}},
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
                {coords = vec4(-1197.33, -898.26, 13.55, 124.00), pedPos = vec4(-1197.68, -897.74, 13.99, 225.0), size = {x =1.13, y = 1.5, z = 1.2}},
                {coords = vec4(-1196.82, -899.24, 13.55, 124.00), pedPos = vec4(-1196.40, -899.92, 13.99, 33.0), size = {x =1.13, y = 1.5, z = 1.2}},
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
                {coords = vec4(-1196.93, -894.99, 14.45, 124.00), pedPos = vec4(-1196.24, -894.49, 13.59, 124.0), size = {x = 0.65, y = 0.65, z = 0.65}},
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
                {coords = vec4(-1197.99, -899.48, 13.80, 124.0), pedPos = vec4(-1198.55, -899.84, 13.99, 303.0), size = {x = 1.2, y = 0.75, z = 0.85}},
                {coords = vec4(-1196.35, -902.01, 13.80, 33.0), pedPos = vec4(-1196.68, -901.47, 13.99, 215.0), size = {x = 1.2, y = 0.75, z = 0.85}},
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
                {coords = vec4(-1197.35, -893.772, 13.55, 124.0), pedPos = vec4(-1196.83, -893.42, 13.99, 124.0), object = {use = false, coords = vec3(-1190.25, -899.50, 12.79), xRot = 0.0, yRot = 0.0, zRot = 35.0}, size = {x = 0.65, y = 0.65, z = 0.85}},
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
                {coords = vec4(-1197.55, -893.772, 14.55, 124.0), pedPos = vec4(-1196.83, -893.42, 13.99, 124.0), size = {x = 0.55, y = 0.45, z = 0.85}},
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
            {coords = vec4(-1194.90, -893.17, 14.15, 35.0), size = {x = 0.52, y = 0.6, z = 0.55}},
            {coords = vec4(-1193.95, -894.75, 14.15, 35.0), size = {x = 0.52, y = 0.6, z = 0.55}},
            {coords = vec4(-1192.85, -896.20, 14.15, 35.0), size = {x = 0.52, y = 0.6, z = 0.55}},
		},
	},

	PoliceAlerts = {
		Alerts = {
            {coords = vec4(-1195.69, -892.54, 13.830, 35.0), object = {use = true, coords = vec3(-1195.69, -892.54, 13.830), xRot = 0.211, yRot = -0.262, zRot = -56.586}, size = {x = 0.25, y = 0.25, z = 0.35}},
            {coords = vec4(-1191.90, -898.12, 13.83, 35.0), object = {use = true, coords = vec3(-1191.90, -898.12, 13.83), xRot = 0.211, yRot = -0.262, zRot = -56.586}, size = {x = 0.25, y = 0.25, z = 0.35}},
		},
	},

	Delivery = {
		StartDelivery = {
            {coords = vec4(-1196.64, -892.86, 14.34, 35.0), pedPos = vec4(-1196.40, -893.28, 14.34, 33.0), object = {use = true, coords = vec3(-1196.64, -892.86, 14.34), xRot = 90.0, yRot = 0.0, zRot = 33.56},  size = {x = 0.25, y = 0.25, z = 0.45}},
		},
	},

	Missions = {
		StartMission = {
            {coords = vec4(-1186.50, -898.49, 14.35, 35.0), pedPos = vec4(-1186.50, -898.19, 13.99, 33.0), storagePos = vec4(-1191.17, -902.32, 13.99, 125.0), size = {x = 0.95, y = 0.25, z = 0.95}},
		},
		DirtySpots = {
            Ground = {
                vec4(-1190.52, -900.00, 13.97, 311.75),
                vec4(-1193.72, -902.45, 13.97, 134.65),
                vec4(-1199.64, -900.31, 13.97, 31.92),
                vec4(-1202.06, -894.75, 13.97, 303.65),
                vec4(-1194.16, -890.80, 13.97, 254.27),
                vec4(-1191.60, -893.35, 13.97, 236.77),
                vec4(-1186.57, -891.94, 13.97, 327.81),
                vec4(-1191.35, -889.38, 13.97, 312.13),
                vec4(-1188.12, -884.16, 13.97, 15.32),
                vec4(-1193.14, -885.03, 13.97, 115.26),
                vec4(-1196.74, -885.26, 13.97, 79.18),
                vec4(-1185.32, -884.76, 13.97, 248.76),
                vec4(-1184.27, -895.93, 13.97, 299.97),
                vec4(-1179.87, -892.65, 13.85, 306.63),
                vec4(-1188.36, -883.52, 13.97, 40.01),
            },
            Tables = {
                vec4(-1190.60, -896.95, 13.97, 215.57),
                vec4(-1189.16, -894.98, 13.97, 213.50),
                vec4(-1187.24, -893.57, 13.97, 214.79),
                vec4(-1185.38, -892.41, 13.98, 222.95),
                vec4(-1186.43, -890.75, 13.97, 26.82),
                vec4(-1188.40, -892.06, 13.97, 32.70),
                vec4(-1192.63, -885.91, 13.97, 212.75),
                vec4(-1192.54, -883.32, 13.97, 38.64),
                vec4(-1190.65, -884.50, 13.97, 210.50),
                vec4(-1190.58, -882.08, 13.97, 33.00),
                vec4(-1188.99, -880.74, 13.97, 345.52),
                vec4(-1187.88, -882.66, 13.97, 307.08),
                vec4(-1183.51, -889.08, 13.97, 130.53),
                vec4(-1182.13, -891.03, 13.97, 128.77),
                vec4(-1192.77, -895.08, 13.97, 124.01),         
            },
		},
	},
	
	Trash = {
		Positions = {
            {coords = vec4(-1185.42, -888.32, 13.55, 215.0), size = {x = 1.30, y = 0.60, z = 1.15}},
            {coords = vec4(-1190.55, -892.09, 13.55, 125.0), size = {x = 1.30, y = 0.60, z = 1.15}},
            {coords = vec4(-1193.32, -887.85, 13.55, 125.0), size = {x = 1.30, y = 0.60, z = 1.15}},
            {coords = vec4(-1194.60, -883.43, 13.55, 125.0), size = {x = 1.30, y = 0.60, z = 1.15}},
            {coords = vec4(-1203.38, -887.27, 12.95, 125.0), size = {x = 0.85, y = 0.85, z = 1.15}},
		},
	},

	HotTables = {
		Positions = {
            {coords = vec4(-1194.85, -898.15, 14.00, 33.00), size = {x = 1.15, y = 1.40, z = 1.50}},
            {coords = vec4(-1195.83, -896.93, 14.00, 33.00), size = {x = 1.15, y = 1.40, z = 1.50}},
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
			{coords = vec4(-1180.96, -884.283, 13.78, 320.0), pedPos = vec4(-1180.55, -883.91, 13.78, 130.0), size = {x = 1.20, y = 1.20, z = 1.50}},
		},
	},

	NpcEmployee = {
		Positions = {
            {coords = vec4(-1195.47, -893.61, 13.97, 303.0), hotTablePos = vec4(-1195.06, -896.35, 13.97, 115.0), size = {x = 1.20, y = 1.20, z = 1.50}},
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
            {coords = vec4(-1195.32, -891.87, 13.99, 125.0), size = {x = 0.45, y = 0.45, z = 1.50}},
		},
	},
}