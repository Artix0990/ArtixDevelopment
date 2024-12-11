Config = {}

Config.EnableDeliveryFeature = true  -- Enable or disable the delivery feature

Config.Images = {
    ["burger-bleeder"] = 'https://example.com/images/burger-bleeder.png',
    ["burger-moneyshot"] = 'https://example.com/images/burger-moneyshot.png',
    ["burger-torpedo"] = 'https://example.com/images/burger-torpedo.png',
    ["burger-heartstopper"] = 'https://example.com/images/burger-heartstopper.png',
    ["burger-meatfree"] = 'https://example.com/images/burger-meatfree.png',
    ["burger-fries"] = 'https://example.com/images/burger-fries.png',
    ["burger-softdrink"] = 'https://example.com/images/burger-softdrink.png',
    ["burger-mshake"] = 'https://example.com/images/burger-mshake.png',
}

Config.Consumables = {
    -- Food 
    ["burger-bleeder"] = math.random(35, 54),
    ["burger-moneyshot"] = math.random(35, 54),
    ["burger-torpedo"] = math.random(35, 54),
    ["burger-heartstopper"] = math.random(35, 54),
    ["burger-meatfree"] = math.random(35, 54),
    ["burger-fries"] = math.random(35, 54),

    -- Drinks
    ["burger-softdrink"] = math.random(40, 50),
    ["burger-mshake"] = math.random(40, 50),
}

Config.Prices = {
    burger = 5,
    fries = 3,
    drink = 2
}


Config.Locations = {
    Till = vector3(1.0, 2.0, 3.0),
    Fridge = vector3(4.0, 5.0, 6.0),
    Grill = vector3(7.0, 8.0, 9.0),
    DrinksMachine = vector3(10.0, 11.0, 12.0),
    Wholesaler = vector3(13.0, 14.0, 15.0),
    BossMenu = vector3(-1192.04, -902.476, 13.998) -- Boss menu location
    burger = 'https://example.com/images/burger.png',
    fries = 'https://example.com/images/fries.png',
    drink = 'https://example.com/images/drink.png'
}

