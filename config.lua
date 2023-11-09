Config = {}

Config.UseBlip = true                      -- [true to enable the blip | false disables the blip]

Config.Location = {
    Coords = vector4(-87.95, -83.11, 57.81 - 1.00, 221.16),
    ModelName = "a_m_y_epsilon_02",
    ModelHash = 0xAA82FF9B,
    SetBlipSprite = 140,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 40,
    BlipName = "Pharmacy"
}

Config.Icons = {
    EyeIcon = "fa-solid fa-face-smile-horns",
    Header = "fa-solid fa-pills",
    PharmShop = "fa-solid fa-pills",
}

Config.Text = {
    TargetLabel = "Pharmacy",
    PedHeader = "Pharmacy",
    PharmShop = "Pharmacy",

}

Config.NeedLighter = true -- Whether or not you need a lighter to light a cigarette
Config.ArePillsIllegal = true -- Whether or not the Unmarked Prescription Pills are legal (adds Wide Pupil Observation to Player)
-------------------------------------------------------------------------------------
Config.MinPillRelief = 50 -- Minimum Stress Relief for Unmarked Prescription Pills
Config.MaxPillRelief = 75 -- Max. Stress Relief for Unmarked Prescription Pills

Config.MinCigRelief = 5 -- Minimum Stress Relief for Cigarettes
Config.MaxCigRelief = 15 -- Max. Stress Releif for Cigarettes

Config.MinCBDRelief = 10 -- Min. Stress Relief for CBD Oil
Config.MaxCBDRelief = 20 -- Max Stress Relief for CBD Oil

Config.MinHerbRelief = 2 -- Min Stress Relief for Herbal Supplements
Config.MaxHerbRelief = 10 -- Max Stress Relief for Herbal Supplements

Config.MinTeaRelief = 1 -- Min Stress Relief for Tea
Config.MaxTeaRelief = 5 -- Max Stress Relief for Tea

---------------------
-- Amount of time (in seconds) that the progress bar shows on screen before the item is used.
Config.PillBar = 2
Config.CigBar = 2
Config.OilBar = 2 
Config.TeaBar = 2
Config.HerbalBar = 2
---------------------

---------------------
-- Amount of Time (in seconds) that the player is in animation before they get the stress relieving effects.
Config.PillTime = 3
Config.CigTime = 10
Config.CBDTime = 3
Config.HerbalTime = 3
Config.TeaTime = 3

Config.PharmShop = {
    label = "Pharmacy",
    slots = 10,
    items = {
        [1] = {
            name = "prescriptionpills",
            price = 50,
            amount = 1000,
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "cigarette",
            price = 10,
            amount = 1000,
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "cbdoil",
            price = 15,
            amount = 1000,
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "chamomiletea",
            price = 3,
            amount = 1000,
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "herbalsupplement",
            price = 5,
            amount = 1000,
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "lighter",
            price = 5,
            amount = 1000,
            type = "item",
            slot = 6,
        }
    }
}