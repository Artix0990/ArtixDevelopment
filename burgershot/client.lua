local QBCore = exports['qb-core']:GetCoreObject()

-- Function to open the till
function OpenTill()
    -- Code to handle till opening and transactions
    print("Till opened for transactions.")
    DisplayFoodImages()
end

-- Function to display food images
function DisplayFoodImages()
    local images = Config.Images
    for item, url in pairs(images) do
        print("Displaying image for: " .. item .. " at " .. url)
        -- Code to create HTML elements to display images
        -- This is a placeholder for actual implementation
    end
end

-- Function to access fridge storage
function AccessFridge()
    -- Code to handle fridge storage
    print("Accessing fridge storage.")
end

-- Function to use the grill
function UseGrill()
    -- Code to handle grilling food
    print("Using the grill.")
end

-- Function to use drinks machine
function UseDrinksMachine()
    -- Code to handle drinks dispensing
    print("Using the drinks machine.")
end

-- Function to access wholesaler
function AccessWholesaler()
    -- Code to handle wholesaler interactions
    print("Accessing wholesaler.")
end

-- Vector codes for BurgerShot locations
local burgerShotLocations = {
    {name = "Till", coords = vector3(1.0, 2.0, 3.0)},
    {name = "Fridge", coords = vector3(4.0, 5.0, 6.0)},
    {name = "Grill", coords = vector3(7.0, 8.0, 9.0)},
    {name = "Drinks Machine", coords = vector3(10.0, 11.0, 12.0)},
    {name = "Wholesaler", coords = vector3(13.0, 14.0, 15.0)}
}

-- Code to handle interactions with the locations
for _, location in pairs(burgerShotLocations) do
    -- Code to create interaction points
    print("Creating interaction point for: " .. location.name)
end
