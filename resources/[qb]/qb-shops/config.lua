Config = {}
Config.UseTruckerJob = false -- true = The shops stock is based on when truckers refill it | false = shop inventory never runs out
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.FirearmsLicenseCheck = false -- Whether a arms dealer checks for a firearms license
Config.ShopsInvJsonFile = './json/shops-inventory.json' -- json file location
Config.SellCasinoChips = {
    coords = vector4(950.37, 34.72, 71.87, 33.82),
    radius = 1.5,
    ped = 's_m_y_casino_01'
}
Config.Products = {
    ["mechanicitems"] = {
        [1] = {
            name = "repairkit",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "advancedrepairkit",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "mechanic" }
        },
        [3] = {
            name = "nitrous",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic" }
        },
        [4] = {
            name = "cleaningkit",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "mechanic" }
        },
        [5] = {
            name = "tunerlaptop",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
            requiredJob = { "mechanic" }
        },
    },
    ["normal"] = {
        [1] = {
            name = "tosti",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "kurkakola",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "twerks_candy",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "snikkel_candy",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "sandwich",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "beer",
            price = 7,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "whiskey",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "vodka",
            price = 12,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "bandage",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "lighter",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "rolling_paper",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "eggsandwich",
            price = 5, 
            amount = 10,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "tunasandwich",
            price = 4, 
            amount = 10,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "hamsandwich",
            price = 4, 
            amount = 10,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "meteorite",
            price = 25, 
            amount = 10,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "egochaser",
            price = 2, 
            amount = 10,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "psnqs",
            price = 1, 
            amount = 10,
            info = {},
            type = "item",
            slot = 18,
        },
    },
    ["liquor"] = {
        [1] = {
            name = "beer",
            price = 7,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "whiskey",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "vodka",
            price = 12,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "beer_am",
            price = 8, 
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "beer_logger",
            price = 9, 
            amount = 10,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "beer_piss",
            price = 6, 
            amount = 10,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "beer_dusche",
            price = 7, 
            amount = 10,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "beer_patriot",
            price = 8, 
            amount = 10,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "beer_stz",
            price = 6, 
            amount = 10,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "beer_pride",
            price = 7, 
            amount = 10,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "beer_bar",
            price = 9, 
            amount = 10,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "beer_jakey",
            price = 5, 
            amount = 10,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "beer_bar",
            price = 7, 
            amount = 10,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "beer_blr",
            price = 8, 
            amount = 10,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "whiskey_mount",
            price = 15, 
            amount = 10,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "whiskey_richards",
            price = 18, 
            amount = 10,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "whiskey_macbeth",
            price = 14, 
            amount = 10,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "whiskey_richards",
            price = 18, 
            amount = 10,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "rum",
            price = 13, 
            amount = 10,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "tequila",
            price = 16, 
            amount = 10,
            info = {},
            type = "item",
            slot = 20,
        },
        [21] = {
            name = "brandy_cardi",
            price = 11, 
            amount = 10,
            info = {},
            type = "item",
            slot = 21,
        },
        [22] = {
            name = "brandy_cognac",
            price = 17, 
            amount = 10,
            info = {},
            type = "item",
            slot = 22,
        },
        [23] = {
            name = "wine_red",
            price = 8, 
            amount = 10,
            info = {},
            type = "item",
            slot = 23,
        },
        [24] = {
            name = "wine_rose",
            price = 9, 
            amount = 10,
            info = {},
            type = "item",
            slot = 24,
        },
        [25] = {
            name = "wine_white",
            price = 7, 
            amount = 10,
            info = {},
            type = "item",
            slot = 25,
        },
    },
    ["hardware"] = {
        [1] = {
            name = "camviewer",
            price = 729,
            amount = 150,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "360cctv",
            price = 496,
            amount = 150,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "cctv",
            price = 250,
            amount = 150,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "rccar",
            price = 230,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "bdrone",
            price = 399,
            amount = 1,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "badrone",
            price = 499,
            amount = 1,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "bbdrone",
            price = 599,
            amount = 5,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "bcdrone",
            price = 699,
            amount = 5,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "lockpick",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "weapon_wrench",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "weapon_hammer",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "repairkit",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
            requiredJob = { "mechanic", "police" }
        },
        [13] = {
            name = "screwdriverset",
            price = 350,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "phone",
            price = 850,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "radio",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "firework1",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "firework2",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "firework3",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "firework4",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 20,
        },
        [21] = {
            name = "bddrone",
            price = 756,
            amount = 2,
            info = {},
            type = "item",
            slot = 21,
        },
        [22] = {
            name = "cleaningkit",
            price = 150,
            amount = 150,
            info = {},
            type = "item",
            slot = 22,
        },
        [23] = {
            name = "advancedrepairkit",
            price = 500,
            amount = 50,
            info = {},
            type = "item",
            slot = 23,
            requiredJob = { "mechanic" }
        },
        [24] = {
            name = 'skateboard',
            price = 300,
            amount = 10,
            info = {},
            type = 'item',
            slot = 24,
        }
    },    
    ["weedshop"] = {
        [1] = {
            name = "joint",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_poolcue",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weed_nutrition",
            price = 20,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "empty_weed_bag",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "rolling_paper",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 5,
        },
    },
    ["gearshop"] = {
        [1] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "jerry_can",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["leisureshop"] = {
        [1] = {
            name = "parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "diving_fill",
            price = 500,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        -- [4] = {
        --     name = "smoketrailred",
        --     price = 250,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 4,
        -- },
    },
    ["weapons"] = {
        [1] = {
            name = "weapon_knife",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_bat",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hatchet",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic", "police" }
        },
        [4] = {
            name = "weapon_pistol",
            price = 2500,
            amount = 5,
            info = {},
            type = "item",
            slot = 4,
            requiresLicense = true
        },
        [5] = {
            name = "weapon_snspistol",
            price = 1500,
            amount = 5,
            info = {},
            type = "item",
            slot = 5,
            requiresLicense = true
        },
        [6] = {
            name = "weapon_vintagepistol",
            price = 4000,
            amount = 5,
            info = {},
            type = "item",
            slot = 6,
            requiresLicense = true
        },
        [7] = {
            name = "pistol_ammo",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 7,
            requiresLicense = true
        },
    },
    ["casino"] = {
        [1] = {
            name = 'casinochips',
            price = 1,
            amount = 999999,
            info = {},
            type = 'item',
            slot = 1,
        }
    },
    ["huntingshop"] = {
        [1] = {
            name = 'weapon_sniperrifle2',
            price = 1500,
            amount = 10,
            info = {},
            type = 'weapon',
            slot = 1,
            requiresLicense = true
        },
        [2] = {
            name = 'snp_ammo',
            price = 100,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2,
            requiresLicense = true
        },
        [3] = {
            name = 'huntingbait',
            price = 150,
            amount = 150,
            info = {},
            type = 'item',
            slot = 3
        },
        [4] = {
            name = 'weapon_knife',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4
        }
    },
    ["skateboard"] = {
        [1] = {
            name = 'skateboard',
            price = 300,
            amount = 10,
            info = {},
            type = 'item',
            slot = 1,
        }
    },
}
Config.Locations = {
    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1226.92, -901.82, 12.28, 213.26)
    },

    ["robsliquor2"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1468.29, -387.61, 38.79, 220.13)
    },

    ["robsliquor3"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-2961.49, 376.25, 15.02, 111.41)
    },

    ["robsliquor4"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1194.52, 2722.21, 38.62, 9.37)
    },

    ["robsliquor5"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1134.2, -982.91, 46.42, 277.24),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1129.73, -989.27, 45.97, 280.98)
    },

    -- Casino Locations
    ["casino"] = {
        ["label"] = "Diamond Casino",
        ["coords"] = vector4(978.46, 39.07, 74.88, 64.0),
        ["ped"] = 'csb_tomcasino',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-coins",
        ["targetLabel"] = "Buy Chips",
        ["products"] = Config.Products["casino"],
        ["showblip"] = false,
        ["blipsprite"] = 617,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(972.6, 9.22, 81.04, 233.38)
    },

    ["casinobar"] = {
        ["label"] = "Casino Bar",
        ["coords"] = vector4(968.13, 29.85, 74.88, 208.86),
        ["ped"] = 'a_m_y_smartcaspat_01',
        ["scenario"] = "WORLD_HUMAN_VALET",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wine-bottle",
        ["targetLabel"] = "Open Casino Bar",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(937.16, 1.0, 78.76, 152.4)
    },

    -- Sea Word Locations
    ["seaword"] = {
        ["label"] = "Sea Word",
        ["coords"] = vector4(-1687.03, -1072.18, 13.15, 52.93),
        ["ped"] = 'a_m_y_beach_01',
        ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-fish",
        ["targetLabel"] = "Sea Word",
        ["products"] = Config.Products["gearshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1674.18, -1073.7, 13.15, 333.56)
    },

    -- Leisure Shop Locations
    ["leisureshop"] = {
        ["label"] = "Leisure Shop",
        ["coords"] = vector4(-1505.91, 1511.95, 115.29, 257.13),
        ["ped"] = 'a_m_y_beach_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-leaf",
        ["targetLabel"] = "Open Leisure Shop",
        ["products"] = Config.Products["leisureshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1507.64, 1505.52, 115.29, 262.2)
    },

    --- New 
    ["247supermarketn1"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(240.1431, -897.5628, 29.6232, 153.8666),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(240.1431, -897.5628, 29.6232, 153.8666)
    },
    ["huntingshop"] = {
        ["label"] = "Hunting Shop",
        ["coords"] = vector4(-674.5170, 5837.8423, 17.3401, 129.6320),
        ["ped"] = 'ig_hunter',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Hunting Shop",
        ["products"] = Config.Products["huntingshop"],
        ["showblip"] = true,
        ["blipsprite"] = 463,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46,
        ["delivery"] = vector4(-674.5170, 5837.8423, 17.3401, 129.6320)
    },
    ["mechanicshop"] = {
        ["label"] = "Mechanic Items",
        ["coords"] = vector4(-196.28, -1318.19, 31.09, 95.68),
        ["ped"] = 'hc_driver',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Mechanic Items",
        ["products"] = Config.Products["mechanicitems"],
        ["showblip"] = true,
        ["blipsprite"] = 779,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 46,
        ["delivery"] = vector4(-196.28, -1318.19, 31.09, 95.68)
    },
}
