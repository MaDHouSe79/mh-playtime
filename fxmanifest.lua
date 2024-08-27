--[[ ===================================================== ]] --
--[[             MH Playtime Script by MaDHouSe            ]] --
--[[ ===================================================== ]] --
fx_version 'cerulean'
game 'gta5'

description 'mh - Play Time'
author "MaDHouSe"
version '1.0'

server_only 'yes'

server_scripts {'@oxmysql/lib/MySQL.lua', '@qb-core/shared/locale.lua', 'locale/en.lua', "server/main.lua", 'server/update.lua'}

dependencies {'qb-core'}

lua54 'yes'
