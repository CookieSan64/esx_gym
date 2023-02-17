fx_version 'adamant'
game 'gta5'

author 'CalicoCorp'
description 'ESX Gym pour CalicoCity'
version 'V1'

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua',
  'config.lua'
}

client_scripts {
  'client/main.lua',
  'config.lua'
}
