--[[ ===================================================== ]] --
--[[             MH Playtime Script by MaDHouSe            ]] --
--[[ ===================================================== ]] --
local QBCore = exports['qb-core']:GetCoreObject()

local function UpdateMetadata()
    MySQL.Async.fetchAll("SELECT * FROM players", function(rs)
        for _, player in pairs(rs) do
            local list = json.decode(player.metadata)
            if not list['playtime'] then 
                list['playtime'] = 0
                MySQL.update.await('UPDATE players SET metadata = ? WHERE citizenid = ?', { json.encode(list), player.citizenid })
            end  
        end
    end)
end

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        UpdateMetadata()
    end
end)

RegisterNetEvent('QBCore:UpdatePlayer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local playtime = tonumber(Player.PlayerData.metadata['playtime']) + 5
    Player.Functions.SetMetaData('playtime', playtime)
end)

QBCore.Commands.Add("playtime", Lang:t('command.info'), {}, true, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player and Player.PlayerData.metadata['playtime'] then
        local playtime = Player.PlayerData.metadata['playtime']
        local days = math.floor(playtime / 1440)
        playtime = playtime - days * 1440
        local hours = math.floor(playtime / 60)
        playtime = playtime - hours * 60
        local minutes = math.floor(playtime)
        QBCore.Functions.Notify(src, Lang:t('success.playtime', {days = days, hours = hours, minutes = minutes}), 'primary', 10000)
    end
end)
