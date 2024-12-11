local QBCore = exports['qb-core']:GetCoreObject()

-- Function to handle transactions
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

-- Function to handle restocking from wholesaler
RegisterServerEvent('fastfood:restock')
AddEventHandler('fastfood:restock', function(item, quantity)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    -- Code to handle restocking logic
    print("Restocking item: " .. item .. " with quantity: " .. quantity)
end)
