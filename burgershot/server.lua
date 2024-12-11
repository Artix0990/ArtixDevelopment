local QBCore = exports['qb-core']:GetCoreObject()

local clockedInPlayers = {}

RegisterServerEvent('fastfood:transaction')
AddEventHandler('fastfood:transaction', function(item, price)
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

RegisterServerEvent('fastfood:restock')
AddEventHandler('fastfood:restock', function(item, quantity)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    print("Restocking item: " .. item .. " with quantity: " .. quantity)
end)

RegisterServerEvent('fastfood:clockIn')
AddEventHandler('fastfood:clockIn', function()
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

RegisterServerEvent('fastfood:clockOut')
AddEventHandler('fastfood:clockOut', function()
    local src = source
    local clockInTime = clockedInPlayers[src]
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
