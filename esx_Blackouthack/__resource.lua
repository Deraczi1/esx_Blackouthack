resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'prostyskrypt'

version '1.1.5'

server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua'
}


