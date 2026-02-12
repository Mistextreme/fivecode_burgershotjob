--[[ Gabz Burger Shot MLO - https://fivem.gabzv.com ]]--

return {
	Blip = {
		coords = vec3(-1184.79, -885.14, 14.03),
	},
	
	DutySystem = {
		coords = vec4(-1177.74, -897.53, 14.20, 124.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 0.2, y = 1.2, z = 1.2},
		},
	},

	BossMenu = {
		coords = vec4(-1198.65, -898.48, 13.60, 35.0),
		target = {
			icon = 'fas fa-hand',
			size = {x = 1.2, y = 2.45, z = 0.5},
		},
	},

	LockerRoom = {
		coords = vector4(-1180.54, -892.85, 13.79, 125.0),
		target = {
			icon = 'fas fa-tshirt',
			size = {x = 0.8, y = 3.3, z = 1.85},
		},
	},

	Storage = {
		coords = vec4(-1196.44, -899.98, 13.79, 125.0),
		target = {
			icon = 'fas fa-box',
			size = {x = 0.8, y = 2.8, z = 1.85},
		},
	},

	Garage = {
		spawn = {
			vec4(-1169.12, -894.24, 13.68, 34.20),
			vec4(-1163.80, -891.09, 13.71, 124.18),
			vec4(-1166.15, -888.30, 13.69, 122.15),
		},
		coords = vec4(-1175.89, -896.11, 13.84, 125.00),
		target = {
			icon = 'fas fa-car',
			size = {x = 0.8, y = 0.5, z = 1.85},
		},
	},

	BathRooms = {
		Toilets = {
			{coords = vec4(-1203.80, -888.92, 13.35, 215.0), pedPos = vec4(-1203.45, -889.39, 13.79, 215.0), size = {x = 0.55, y = 0.7, z = 0.95}},
			{coords = vec4(-1206.91, -891.03, 13.35, 215.0), pedPos = vec4(-1206.51, -891.51, 13.99, 220.0), size = {x = 0.55, y = 0.7, z = 0.95}},
			{coords = vec4(-1205.56, -890.15, 13.35, 215.0), pedPos = vec4(-1205.18, -890.57, 13.99, 220.0), size = {x = 0.55, y = 0.7, z = 0.95}},
			{coords = vec4(-1184.22, -894.95, 13.35, 215.0), pedPos = vec4(-1183.92, -895.41, 13.99, 220.0), size = {x = 0.55, y = 0.75, z = 0.95}},
			{coords = vec4(-1205.10, -894.69, 13.55, 214.0), pedPos = vec4(-1204.79, -894.43, 13.79, 303.0), size = {x = 0.55, y = 0.7, z = 0.95}, poop = true},
			{coords = vec4(-1204.56, -895.52, 13.55, 215.0), pedPos = vec4(-1204.26, -895.19, 13.79, 303.0), size = {x = 0.55, y = 0.7, z = 0.95}, poop = true},
		},
		Sinks = {
			-- Bathroom
			{coords = vec4(-1200.25, -889.58, 13.55, 303.0), pedPos = vec4(-1200.58, -889.82, 13.79, 303.0), size = {x = 0.60, y = 0.7, z = 1.05}},
			{coords = vec4(-1183.95, -896.65, 13.55, 125.0), pedPos = vec4(-1183.60, -896.37, 13.79, 125.0), size = {x = 0.62, y = 0.7, z = 1.05}},
			{coords = vec4(-1202.88, -896.42, 13.55, 125.0), pedPos = vec4(-1203.20, -895.94, 13.79, 220.0), size = {x = 0.65, y = 0.7, z = 1.05}},
			{coords = vec4(-1202.12, -895.91, 13.55, 125.0), pedPos = vec4(-1202.39, -895.51, 13.79, 220.0), size = {x = 0.62, y = 0.7, z = 1.05}},

			-- Kitchen
			{coords = vec4(-1186.65, -903.05, 13.55, 214.0), pedPos = vec4(-1187.05, -902.50, 13.99, 214.0), size = {x = 1.20, y = 0.8, z = 1.05}, job = true},
		},
	},

	TablesAndChairs = {
		Tables = {
			{coords = vec4(-1193.75, -896.27, 13.62, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1194.75, -894.67, 13.62, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1195.89, -893.14, 13.62, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1198.83, -888.65, 13.62, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1199.99, -887.12, 13.62, 124.0), size = {x = 1.35, y = 0.9, z = 0.25}},
			{coords = vec4(-1192.40, -887.40, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1190.61, -886.24, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1188.91, -884.99, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1191.52, -881.19, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1193.29, -882.27, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1194.95, -883.50, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1188.52, -879.54, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1187.35, -881.24, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1186.14, -882.87, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1183.44, -887.20, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1182.12, -888.85, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1180.94, -890.63, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1182.61, -891.66, 13.62, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1188.07, -890.11, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1186.31, -888.99, 13.62, 124.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1188.90, -897.85, 13.92, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1188.27, -894.08, 13.92, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1189.72, -895.05, 13.92, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
			{coords = vec4(-1191.29, -896.10, 13.92, 34.0), size = {x = 1.15, y = 0.6, z = 0.25}},
		},
		Chairs = {
			{coords = vec4(-1200.70, -887.12, 13.31, 303.0), leavePos = vec4(-1198.75, -890.24, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1200.26, -887.76, 13.31, 303.0), leavePos = vec4(-1198.75, -890.24, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1199.54, -888.83, 13.31, 303.0), leavePos = vec4(-1198.75, -890.24, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1199.07, -889.53, 13.31, 303.0), leavePos = vec4(-1198.75, -890.24, 13.99, 280.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1194.09, -896.90, 13.31, 303.0), leavePos = vec4(-1197.0, -892.53, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1194.50, -896.30, 13.31, 303.0), leavePos = vec4(-1197.0, -892.53, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.08, -895.43, 13.31, 303.0), leavePos = vec4(-1197.0, -892.53, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.50, -894.81, 13.31, 303.0), leavePos = vec4(-1197.0, -892.53, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1196.12, -893.89, 13.31, 303.0), leavePos = vec4(-1197.0, -892.53, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1196.59, -893.13, 13.31, 303.0), leavePos = vec4(-1197.0, -892.53, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.68, -883.64, 13.31, 303.0), leavePos = vec4(-1194.93, -884.77, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1195.28, -884.23, 13.31, 303.0), leavePos = vec4(-1194.93, -884.77, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.73, -888.02, 13.31, 303.0), leavePos = vec4(-1193.53, -886.95, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1193.11, -887.45, 13.31, 303.0), leavePos = vec4(-1193.53, -886.95, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1193.96, -882.46, 13.31, 303.0), leavePos = vec4(-1193.25, -883.58, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1193.55, -883.07, 13.31, 303.0), leavePos = vec4(-1193.25, -883.58, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.03, -886.78, 13.31, 303.0), leavePos = vec4(-1191.80, -885.77, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.41, -886.23, 13.31, 303.0), leavePos = vec4(-1191.80, -885.77, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.25, -881.26, 13.31, 303.0), leavePos = vec4(-1191.53, -882.41, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.89, -881.82, 13.31, 303.0), leavePos = vec4(-1191.53, -882.41, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.30, -885.61, 13.31, 303.0), leavePos = vec4(-1190.03, -884.59, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.65, -885.13, 13.31, 303.0), leavePos = vec4(-1190.03, -884.59, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.77, -890.08, 13.31, 303.0), leavePos = vec4(-1188.00, -891.27, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.38, -890.73, 13.31, 303.0), leavePos = vec4(-1188.00, -891.27, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.98, -889.08, 13.31, 303.0), leavePos = vec4(-1186.35, -890.15, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.66, -889.56, 13.31, 303.0), leavePos = vec4(-1186.35, -890.15, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1199.44, -886.26, 13.31, 125.0), leavePos = vec4(-1198.89, -885.82, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1199.01, -886.93, 13.31, 125.0), leavePos = vec4(-1198.34, -886.74, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1198.39, -887.82, 13.31, 125.0), leavePos = vec4(-1197.76, -887.46, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1197.87, -888.58, 13.31, 125.0), leavePos = vec4(-1197.39, -888.15, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1191.63, -887.39, 13.31, 125.0), leavePos = vec4(-1192.43, -886.21, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.04, -886.82, 13.31, 125.0), leavePos = vec4(-1192.43, -886.21, 13.79, 33.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.76, -896.15, 13.31, 125.0), leavePos = vec4(-1192.25, -895.75, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1193.30, -895.46, 13.31, 125.0), leavePos = vec4(-1192.67, -895.026, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1193.85, -894.53, 13.31, 125.0), leavePos = vec4(-1193.16, -894.18, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1194.31, -893.85, 13.31, 125.0), leavePos = vec4(-1193.64, -893.49, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1194.85, -893.05, 13.31, 125.0), leavePos = vec4(-1194.24, -892.68, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1195.36, -892.35, 13.31, 125.0), leavePos = vec4(-1194.73, -891.96, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1194.67, -882.94, 13.31, 125.0), leavePos = vec4(-1193.84, -883.96, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1194.30, -883.45, 13.31, 125.0), leavePos = vec4(-1193.84, -883.96, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.87, -881.87, 13.31, 125.0), leavePos = vec4(-1192.07, -882.85, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1192.51, -882.42, 13.31, 125.0), leavePos = vec4(-1192.07, -882.85, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.89, -886.25, 13.31, 125.0), leavePos = vec4(-1190.70, -884.96, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.29, -885.67, 13.31, 125.0), leavePos = vec4(-1190.70, -884.96, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1191.23, -880.55, 13.31, 125.0), leavePos = vec4(-1190.30, -881.68, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1190.82, -881.16, 13.31, 125.0), leavePos = vec4(-1190.30, -881.68, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.24, -884.98, 13.31, 125.0), leavePos = vec4(-1188.93, -883.85, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.62, -884.40, 13.31, 125.0), leavePos = vec4(-1188.93, -883.85, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.75, -889.43, 13.31, 125.0), leavePos = vec4(-1186.88, -890.51, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.40, -890.00, 13.31, 125.0), leavePos = vec4(-1186.88, -890.51, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.05, -888.23, 13.31, 125.0), leavePos = vec4(-1185.04, -889.36, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1185.70, -888.74, 13.31, 125.0), leavePos = vec4(-1185.04, -889.36, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1180.98, -889.82, 13.31, 215.0), leavePos = vec4(-1182.81, -889.95, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1181.60, -890.25, 13.31, 215.0), leavePos = vec4(-1182.81, -889.95, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1182.74, -890.90, 13.31, 215.0), leavePos = vec4(-1182.81, -889.95, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1183.36, -891.31, 13.31, 215.0), leavePos = vec4(-1183.87, -890.73, 13.99, 303.0), size = {x = 0.62, y = 0.8, z = 1.25}},
			{coords = vec4(-1188.52, -878.78, 13.31, 215.0), leavePos = vec4(-1189.75, -879.48, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1189.07, -879.12, 13.31, 215.0), leavePos = vec4(-1189.75, -879.48, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.32, -880.47, 13.31, 215.0), leavePos = vec4(-1188.68, -881.26, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.00, -880.92, 13.31, 215.0), leavePos = vec4(-1188.68, -881.26, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.14, -882.18, 13.31, 215.0), leavePos = vec4(-1187.42, -882.99, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.73, -882.59, 13.31, 215.0), leavePos = vec4(-1187.42, -882.99, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.30, -886.36, 13.31, 215.0), leavePos = vec4(-1184.71, -887.10, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.80, -886.77, 13.31, 215.0), leavePos = vec4(-1184.71, -887.10, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.12, -888.12, 13.31, 215.0), leavePos = vec4(-1183.40, -888.87, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.75, -888.50, 13.31, 215.0), leavePos = vec4(-1183.40, -888.87, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.98, -879.90, 13.31, 33.0), leavePos = vec4(-1188.90, -880.73, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1188.46, -880.20, 13.31, 33.0), leavePos = vec4(-1188.90, -880.73, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.70, -881.55, 13.31, 33.0), leavePos = vec4(-1187.76, -882.52, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1187.29, -881.95, 13.31, 33.0), leavePos = vec4(-1187.76, -882.52, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1185.50, -883.25, 13.31, 33.0), leavePos = vec4(-1186.62, -884.12, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1186.15, -883.69, 13.31, 33.0), leavePos = vec4(-1186.62, -884.12, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.67, -887.45, 13.31, 33.0), leavePos = vec4(-1183.87, -888.31, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1183.28, -887.83, 13.31, 33.0), leavePos = vec4(-1183.87, -888.31, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1181.49, -889.16, 13.31, 33.0), leavePos = vec4(-1182.74, -889.92, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.10, -889.53, 13.31, 33.0), leavePos = vec4(-1182.74, -889.92, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1180.32, -890.89, 13.31, 33.0), leavePos = vec4(-1183.55, -892.43, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1180.95, -891.25, 13.31, 33.0), leavePos = vec4(-1183.55, -892.43, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.00, -892.02, 13.31, 33.0), leavePos = vec4(-1183.55, -892.43, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
			{coords = vec4(-1182.53, -892.37, 13.31, 33.0), leavePos = vec4(-1183.55, -892.43, 13.99, 303.0), size = {x = 0.52, y = 0.6, z = 1.05}},
		},
	},

	Crafting = {
		Fryer = {
			Positions = {
				{coords = vec4(-1187.41, -899.79, 13.55, 124.0), pedPos = vec4(-1187.548, -898.8691, 13.95, 215.0), size = {x =1.13, y = 1.5, z = 1.2}},
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
				{coords = vec4(-1186.90, -900.57, 13.55, 124.0), pedPos = vec4(-1186.50, -901.17, 13.95, 33.0), size = {x =1.13, y = 1.5, z = 1.2}},
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
				{coords = vec4(-1185.25, -902.12, 13.55, 124.00), pedPos = vec4(-1185.65, -901.57, 13.99, 225.0), size = {x =1.13, y = 1.5, z = 1.2}},
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
				{coords = vec4(-1191.42, -898.03, 14.15, 124.00), pedPos = vec4(-1190.85, -897.63, 13.59, 124.0), size = {x = 0.65, y = 0.65, z = 0.65}},
				{coords = vec4(-1191.88, -897.50, 14.15, 124.00), pedPos = vec4(-1191.18, -897.00, 13.59, 124.0), size = {x = 0.65, y = 0.65, z = 0.65}},
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
				{coords = vec4(-1188.12, -901.14, 13.80, 124.0), pedPos = vec4(-1188.56, -901.54, 13.99, 303.0), size = {x = 1.2, y = 0.75, z = 0.85}},
				{coords = vec4(-1185.84, -899.59, 13.80, 124.0), pedPos = vec4(-1185.34, -899.29, 13.99, 124.0), size = {x = 1.2, y = 0.75, z = 0.85}},
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
				{coords = vec4(-1190.31, -899.41, 13.55, 124.0), pedPos = vec4(-1189.79, -900.15, 13.99, 35.0), object = {use = true, coords = vec3(-1190.25, -899.50, 12.79), xRot = 0.0, yRot = 0.0, zRot = 35.0}, size = {x = 1.35, y = 0.75, z = 0.85}},
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
				{coords = vec4(-1190.92, -898.45, 14.35, 124.0), pedPos = vec4(-1190.52, -898.04, 13.99, 135.0), size = {x = 0.55, y = 0.45, z = 0.85}},
				{coords = vec4(-1192.02, -896.853, 14.35, 124.0), pedPos = vec4(-1191.26, -896.85, 13.99, 100.0), size = {x = 0.55, y = 0.45, z = 0.85}},
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
			{coords = vec4(-1190.60, -895.65, 14.15, 35.0), size = {x = 0.52, y = 0.6, z = 0.55}},
			{coords = vec4(-1189.10, -894.65, 14.15, 35.0), size = {x = 0.52, y = 0.6, z = 0.55}},
			{coords = vec4(-1187.62, -893.55, 14.15, 35.0), size = {x = 0.52, y = 0.6, z = 0.55}},
			{coords = vec4(-1194.71, -905.25, 13.95, 170.0), size = {x = 0.95, y = 1.25, z = 0.55}},
		},
	},

	PoliceAlerts = {
		Alerts = {
			{coords = vec4(-1191.51, -896.53, 13.55, 35.0), object = {use = true, coords = vec3(-1191.54, -896.55, 13.53), xRot = 0.211, yRot = -0.262, zRot = 34.565}, size = {x = 0.25, y = 0.25, z = 0.35}},
			{coords = vec4(-1187.30, -893.72, 13.55, 35.0), object = {use = true, coords = vec3(-1187.25, -893.64, 13.45), xRot = 0.211, yRot = -0.262, zRot = 34.565}, size = {x = 0.25, y = 0.25, z = 0.35}},
		},
	},

	Delivery = {
		StartDelivery = {
			{coords = vec4(-1180.95, -895.28, 14.25, 35.0), pedPos = vec4(-1180.59, -894.94, 13.99, 125.0), object = {use = true, coords = vec3(-1180.98, -895.32, 14.25), xRot = 90.0, yRot = 127.0, zRot = -3.0},  size = {x = 0.25, y = 0.25, z = 0.45}},
		},
	},

	Missions = {
		StartMission = {
			{coords = vec4(-1181.50, -895.95, 14.25, 33.0), pedPos = vec4(-1181.30, -896.24, 13.99, 33.0), storagePos = vec4(-1181.23, -898.89, 13.99, 210.0), size = {x = 0.95, y = 0.25, z = 0.95}},
		},
		DirtySpots = {
			Ground = {
				vec4(-1198.36, -892.05, 13.80, 111.88),
				vec4(-1192.05, -891.91, 13.80, 259.07),
				vec4(-1189.39, -888.12, 13.80, 309.43),
				vec4(-1188.54, -882.80, 13.80, 50.07),
				vec4(-1190.38, -883.41, 13.80, 123.94),
				vec4(-1193.73, -885.68, 13.80, 123.96),
				vec4(-1197.09, -884.83, 13.80, 74.05),
				vec4(-1196.24, -890.11, 13.80, 80.85),
				vec4(-1190.04, -891.16, 13.80, 95.94),
				vec4(-1189.05, -893.09, 13.80, 228.19),
				vec4(-1190.55, -894.00, 13.80, 122.83),
				vec4(-1191.54, -894.77, 13.80, 129.67),
				vec4(-1188.23, -895.74, 13.80, 135.75),
				vec4(-1186.89, -897.88, 13.80, 151.37),
				vec4(-1189.30, -902.75, 13.80, 186.06),
			},
			Tables = {
				vec4(-1183.44, -892.28, 13.80, 307.66),
				vec4(-1183.08, -889.56, 13.80, 302.73),
				vec4(-1184.26, -887.82, 13.80, 304.06),
				vec4(-1187.43, -890.91, 13.80, 29.07),
				vec4(-1185.73, -889.76, 13.80, 27.89),
				vec4(-1187.02, -883.63, 13.80, 295.14),
				vec4(-1188.13, -881.91, 13.80, 302.29),
				vec4(-1189.35, -880.12, 13.80, 298.14),
				vec4(-1190.91, -882.12, 13.80, 28.94),
				vec4(-1189.55, -884.14, 13.80, 214.81),
				vec4(-1192.61, -883.26, 13.80, 39.49),
				vec4(-1191.30, -885.32, 13.80, 209.47),
				vec4(-1194.25, -884.37, 13.80, 39.39),
				vec4(-1192.98, -886.42, 13.80, 205.97),
				vec4(-1198.24, -889.47, 13.80, 38.27),
			},
		},
	},
	
	Trash = {
		Positions = {
			{coords = vec4(-1199.65, -890.85, 13.55, 34.0), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1193.7, -888.10, 13.55, 303.0), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1189.25, -891.06, 13.55, 303.0), size = {x = 1.30, y = 0.60, z = 1.15}},
			{coords = vec4(-1183.57, -893.35, 13.55, 34.0), size = {x = 1.32, y = 0.60, z = 1.15}},

			{coords = vec4(-1202.2, -896.9, 13.25, 34.0), size = {x = 0.40, y = 0.40, z = 0.55}},
		},
	},

	HotTables = {
		Positions = {
			{coords = vec4(-1187.67, -896.94, 14.00, 124.00), size = {x = 0.70, y = 1.40, z = 1.50}},
			{coords = vec4(-1191.26, -903.80, 14.00, 33.00), size = {x = 0.90, y = 1.40, z = 1.50}},
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
			{coords = vec4(-1190.25, -896.11, 13.80, 33.0), hotTablePos = vec4(-1188.21, -896.24, 13.80, 210.0), size = {x = 1.20, y = 1.20, z = 1.50}},
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
			{coords = vec4(-1186.95, -893.05, 13.99, 125.0), size = {x = 0.45, y = 0.8, z = 1.50}},
		},
	},
}