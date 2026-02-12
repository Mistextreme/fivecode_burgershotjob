--[[ FX Information ]]--
fx_version   'cerulean'
use_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'
ui_page 	 'html/index.html'

--[[ Resource Information ]]--
name         'fivecode_burgershot'
version      'v0.1.4'
description  'Burger Shot Job.'
author       'Fivecode Scripts'

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua',
	'locations/*.lua',
	'usableItems.lua',
	'locales.lua',
	'locales/*.lua',
	'shared/*.lua',
}

client_scripts {
	'client/framework/*.lua',
	'client/inventory/*.lua',
	'cl_utils.lua',
	'client/*.lua',
	'modules/*.lua',
	'modules/**/client.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/framework/*.lua',
	'server/inventory/*.lua',
	'server/society/*.lua',
	'sv_utils.lua',
	'server/*.lua',
	'modules/**/server.lua',
}

escrow_ignore {
	'config.lua',
	'locations/*.lua',
	'usableItems.lua',

	'client/framework/*.lua',
	'client/inventory/*.lua',
	'cl_utils.lua',
	'client/menu.lua',
	'client/notify.lua',
	'client/progressBar.lua',

	'server/framework/*.lua',
	'server/inventory/*.lua',
	'server/society/*.lua',
	'sv_utils.lua',

	'locales/*.lua',
}

files {
    'html/index.html',
    'html/styles.css',
    'html/script.js',
    'html/images/burgershotlogo.png',
	'html/images/cash_register.png',
	'html/sounds/*.ogg',
}

data_file 'DLC_ITYP_REQUEST' 'stream/fivecode_burgershot.ytyp'
dependency '/assetpacks'