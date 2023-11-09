local RevoltPed
local QBCore = exports['qb-core']:GetCoreObject()

-- Remove ped model on resource stop.

local function RemoveRevoltPed()
    if DoesEntityExist(RevoltPed) then
        DeletePed(RevoltPed)
    end
end

AddEventHandler('onResourceStop', function(resourceName)
	if GetCurrentResourceName() == resourceName then
        RemoveRevoltPed()
	end
end)

-- Target and ped model

CreateThread(function()
    if Config.UseBlip then
        local RevoltBlip = AddBlipForCoord(Config.Location.Coords)
        SetBlipSprite(RevoltBlip, Config.Location.SetBlipSprite)
        SetBlipDisplay(RevoltBlip, Config.Location.SetBlipDisplay)
        SetBlipScale(RevoltBlip, Config.Location.SetBlipScale)
        SetBlipAsShortRange(RevoltBlip, true)
        SetBlipColour(RevoltBlip, Config.Location.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Location.BlipName)
        EndTextCommandSetBlipName(RevoltBlip)
    end

    local Coords = Config.Location.Coords
    local PedHash = Config.Location.ModelHash
    local PedModel = Config.Location.ModelName

    if not DoesEntityExist(RevoltPed) then
        RequestModel(GetHashKey(PedModel))
        while not HasModelLoaded(GetHashKey(PedModel)) do
            Wait(1)
        end

        RevoltPed = CreatePed(1, PedHash, Coords, false, true)
        FreezeEntityPosition(RevoltPed, true)
        SetEntityInvincible(RevoltPed, true)
        SetBlockingOfNonTemporaryEvents(RevoltPed, true)
    end

    exports['qb-target']:AddTargetEntity(RevoltPed, {
        options = {
            {
                num = 1,
                type = "client",
                event = "revolt:PharmShop",
                label = Config.Text["TargetLabel"],
                icon = Config.Icons["Eyeicon"]
            }
        },
        distance = 1.5
    })
end)

-- Shop Event
RegisterNetEvent("revolt:PharmShop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.PharmShop)
end)

RegisterNetEvent('revolt:consumables:UsePills', function() -- Item Events, Relieves Stress
    QBCore.Functions.Progressbar("smoke_joint", "Taking Pills...", Config.PillBar * 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["prescriptionpills"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"nervous"})
            Wait(Config.PillTime * 1000)
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"nervous"})
            Wait(Config.PillTime * 1000)
        end
        if Config.ArePillsIllegal then
            TriggerEvent("evidence:client:SetStatus", "widepupils", 300)
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(Config.MinPillRelief, Config.MaxPillRelief))
    end)
end)

RegisterNetEvent('revolt:consumables:UseCig', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting Cigarette...", Config.CigBar * 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cigarette"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke"})
            Wait(Config.CigTime * 1000)
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke"})
            Wait(Config.CigTime * 1000)
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(Config.MinCigRelief, Config.MaxCigRelief))
    end)
end)

RegisterNetEvent('revolt:consumables:UseCBD', function()
    QBCore.Functions.Progressbar("smoke_joint", "Using CBD Oil...", Config.OilBar * 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cbdoil"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"cleanhands"})
            Wait(Config.CBDTime * 1000)
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"cleanhands"})
            Wait(Config.CBDTime * 1000)
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(Config.MinCBDRelief, Config.MaxCBDRelief))
    end)
end)

RegisterNetEvent('revolt:consumables:UseHerbal', function()
    QBCore.Functions.Progressbar("smoke_joint", "Taking Herbal Supplement...", Config.HerbalBar * 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["herbalsupplement"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"snot"})
            Wait(Config.HerbalTime * 1000)
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"snot"})
            Wait(Config.HerbalTime * 1000)
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(Config.MinHerbRelief, Config.MaxHerbRelief))
    end)
end)

RegisterNetEvent('revolt:consumables:UseTea', function()
    QBCore.Functions.Progressbar("smoke_joint", "Drinking Tea...", Config.TeaBar * 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["chamomiletea"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
            Wait(Config.TeaTime * 1000)
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
            Wait(Config.TeaTime * 1000)
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(Config.MinTeaRelief, Config.MaxTeaRelief))
    end)
end)