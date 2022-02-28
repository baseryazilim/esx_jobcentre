fx_version 'adamant'

game 'gta5'

description 'ESX Job Centre - It is being developed and updated by Baser Software'

version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/tr.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/tr.lua',
	'config.lua',
	'server/main.lua'
}

ui_page "html/jobui.html"

files {
    'html/jobui.html',
    'html/jobjs.js',
    'html/jobstyles.css',
    'html/img/*.png'

}

dependencies {
	'es_extended',
	'esx_addonaccount',
	'skinchanger',
	'esx_skin'
}
