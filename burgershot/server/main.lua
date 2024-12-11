local QBCore = exports['qb-core']:GetCoreObject()

local clockedInPlayers = {}

RegisterServerEvent('burgershot:deliverFood')  -- New delivery event
AddEventHandler('burgershot:deliverFood', function(npc)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    -- Logic to check if the player has food to deliver
    -- For example, check if the player has a specific item in their inventory
    if Player.Functions.GetItemByName('food_item') then  -- Replace 'food_item' with the actual item name
        -- Logic for successful delivery
        TriggerClientEvent('QBCore:Notify', src, "Food delivered to " .. npc.name, "success")
        print("Player " .. Player.PlayerData.charinfo.firstname .. " delivered food to " .. npc.name)
    else
        TriggerClientEvent('QBCore:Notify', src, "You don't have any food to deliver!", "error")
        print("Player " .. Player.PlayerData.charinfo.firstname .. " tried to deliver food but has none.")
    end
end)

RegisterServerEvent('burgershot:transaction')
AddEventHandler('burgershot:transaction', function(item, price)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveMoney('cash', price) then
        TriggerClientEvent('QBCore:Notify', src, "Transaction successful!", "success")
        print("Transaction completed for item: " .. item)
    else
        TriggerClientEvent('QBCore:Notify', src, "Not enough money!", "error")
        print("Transaction failed for item: " .. item)
    end
end)

RegisterServerEvent('burgershot:restock')
AddEventHandler('burgershot:restock', function(item, quantity)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    print("Restocking item: " .. item .. " with quantity: " .. quantity)
end)

RegisterServerEvent('burgershot:clockIn')
AddEventHandler('burgershot:clockIn', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not clockedInPlayers[src] then
        clockedInPlayers[src] = os.time()  -- Store the current time as clock in time
        TriggerClientEvent('QBCore:Notify', src, "You have clocked in!", "success")
        print("Player " .. Player.PlayerData.charinfo.firstname .. " clocked in at " .. os.date('%Y-%m-%d %H:%M:%S', clockedInPlayers[src]))
    else
        TriggerClientEvent('QBCore:Notify', src, "You are already clocked in!", "error")
    end
end)

RegisterServerEvent('burgershot:clockOut')
AddEventHandler('burgershot:clockOut', function()
    local src = source
    local clockInTime = clockedInPlayers[src]
    if job == "burgershot" then  -- Check if the player has the burgershot job
    if clockInTime then
        local clockOutTime = os.time()  -- Get the current time as clock out time
        local duration = os.difftime(clockOutTime, clockInTime)  -- Calculate duration
        clockedInPlayers[src] = nil  -- Remove the player from the clocked in list
        TriggerClientEvent('QBCore:Notify', src, "You have clocked out! Duration: " .. duration .. " seconds", "success")
        print("Player " .. Player.PlayerData.charinfo.firstname .. " clocked out at " .. os.date('%Y-%m-%d %H:%M:%S', clockOutTime) .. " after " .. duration .. " seconds.")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are not clocked in!", "error")
    end
end)
