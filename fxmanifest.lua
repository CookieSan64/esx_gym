fx_version 'adamant'
game 'gta5'

author 'ChouCookieSan'
description 'ESX Gym pour CalicoCity'
version '2.0.0'

dependency 'rpemotes'

shared_script '@es_extended/imports.lua'

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua',
  'config.lua'
}

client_scripts {
  'client/main.lua',
  'config.lua'
}