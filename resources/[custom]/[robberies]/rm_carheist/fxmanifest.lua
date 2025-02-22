fx_version 'cerulean'
games { 'rdr3', 'gta5' }

lua54 'yes'

shared_scripts {
    'config.lua'
}

server_scripts {
    'editable_server.lua',
	'server.lua'
}

client_scripts {
    'editable_functions.lua',
	'client.lua',
    'hotwire.lua'
}

escrow_ignore {
    'config.lua',
    'editable_functions.lua',
    'editable_server.lua',
    'server.lua'
}