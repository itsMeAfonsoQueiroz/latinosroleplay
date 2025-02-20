fx_version 'adamant'

game 'gta5'

author 'https://discord.gg/2G96dasQPM'
description 'This script is specifically modified for the MeteoNp4 server.'

version '1.5.4'

ui_page 'html/ui.html'

client_scripts {
	'client.lua',
	'config.lua',
}

server_scripts {
	'server.lua',
	'config.lua',
}


files {
	'html/ui.html',
	'html/*.css',
	'html/*.js',
	'html/img/*.png',
	'html/img/*.jpg',
}

lua54 'yes'

escrow_ignore {
	'shared/*.lua'
}

