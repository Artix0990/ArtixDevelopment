local QBCore = exports['qb-core']:GetCoreObject()
local Target = exports['qb-target']

-- Define target points for clocking in and out
Citizen.CreateThread(function()
    Target.AddTargetEntity(GetPlayerPed(-1), {
        options = {
            {
                event = "burgershot:clockIn",
                icon = "fas fa-sign-in-alt",
                label = "Clock In",
            },
            {
                event = "burgershot:clockOut",
                icon = "fas fa-sign-out-alt",
                label = "Clock Out",
            },
        },
        distance = 2.5
    })
end)

function OpenTill()
    print("Till opened for transactions.")
    DisplayFoodImages()
end

function DisplayFoodImages()
    local images = Config.Images
    for item, url in pairs(images) do
        print("Displaying image for: " .. item .. " at " .. url)
    end
end

function AccessFridge()
    print("Accessing fridge storage.")
end

function UseGrill()
    print("Using the grill.")
end

function UseDrinksMachine()
    print("Using the drinks machine.")
end

function AccessWholesaler()
    print("Accessing wholesaler.")
end

local deliveryLocations = {
    {name = "NPC1", coords = vector3(20.0, 30.0, 40.0)},  -- Example NPC location
    {name = "NPC2", coords = vector3(25.0, 35.0, 45.0)}   -- Another NPC location
}

local burgerShotLocations = {
    {name = "Till", coords = vector3(1.0, 2.0, 3.0)},
    {name = "Fridge", coords = vector3(4.0, 5.0, 6.0)},
    {name = "Grill", coords = vector3(7.0, 8.0, 9.0)},
    {name = "Drinks Machine", coords = vector3(-1193.91, -894.34, 13.89)},
    {name = "Wholesaler", coords = vector3(13.0, 14.0, 15.0)}
}

for _, location in pairs(burgerShotLocations) do
    print("Creating interaction point for: " .. location.name)
end
