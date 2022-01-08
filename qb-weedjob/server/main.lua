local QBCore = exports['qb-core']:GetCoreObject()


-- kp was die item namen sind
local ItemTable = {
    "weed_og-kush",
    "weed_amnesia",
    "weed_skunk",
    "weed_ak47",
    "weed_purple-haze",
    "weed_white-widow",
}

RegisterNetEvent('qb-weedjob:server:getItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for i = 1, math.random(1, 5), 1 do
        local randItem = ItemTable[math.random(1, #ItemTable)]
        local amount = math.random(2, 6)
        Player.Functions.AddItem(randItem, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add')
        Wait(500)
    end

    local chance = math.random(1, 100)
    if chance < 1 then
        Player.Functions.AddItem("cryptostick", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cryptostick"], "add")
    end
    -- for better overall customisation the chances for every "luck based" drop can be changed here.insideLocation
    -- also the script can be manually rewritten to use other items / custom items
    local Luck = math.random(1, 25)
    local Odd = math.random(1, 25) --chance for weed_white-widow_seed to occur
    local Odd2 = math.random(1, 25) --chance for weed_skunk_seed to occur
    local Odd3 = math.random(1, 25) --chance for weed_purple-haze_seed to occur
    local Odd4 = math.random(1, 25) --chance for weed_og-kush_seed to occur
    local Odd5 = math.random(1, 25) --chance for weed_amnesia_seed to occur
    local Odd6 = math.random(1, 25) --cahnce for weed_ak47_seed to occur
    if Luck == Odd then
        local random = math.random(1, 2) --amount of items dropped by the "lucky drop"
        Player.Functions.AddItem("weed_white-widow_seed", random) --item dropped by the Lucky Drop
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed_white-widow_seed"], 'add')
    end
    if Luck == Odd2 then
        local random = math.random(1, 2)
        Player.Functions.AddItem("weed_skunk_seed", random)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed_skunk_seed"], 'add')
    end
    if Luck == Odd3 then
        local random = math.random(1, 2)
        Player.Functions.AddItem("weed_purple-haze_seed", random)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed_purple-haze_seed"], 'add')
    end
    if Luck == Odd4 then
        local random = math.random(1, 2)
        Player.Functions.AddItem("weed_og-kush_seed", random)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed_og-kush_seed"], 'add')
    end
    if Luck == Odd5 then
        local random = math.random(1, 2)
        Player.Functions.AddItem("weed_amnesia_seed", random)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed_amnesia_seed"], 'add')
    end
    if Luck == Odd6 then
        local random = math.random(1, 2)
        Player.Functions.AddItem("weed_ak47_seed", random)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weed_ak47_seed"], 'add')
    end
end)
