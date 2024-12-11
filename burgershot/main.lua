local QBCore = exports['qb-core']:GetCoreObject()

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

local burgerShotLocations = {
    {name = "Till", coords = vector3(1.0, 2.0, 3.0)},
    {name = "Fridge", coords = vector3(4.0, 5.0, 6.0)},
    {name = "Grill", coords = vector3(7.0, 8.0, 9.0)},
    {name = "Drinks Machine", coords = vector3(10.0, 11.0, 12.0)},
    {name = "Wholesaler", coords = vector3(13.0, 14.0, 15.0)}
}


for _, location in pairs(burgerShotLocations) do
    -- Code to create interaction points
    print("Creating interaction point for: " .. location.name)
end
