local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('prescriptionpills', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
	    TriggerClientEvent("revolt:consumables:UsePills", source)
end)

QBCore.Functions.CreateUseableItem("cigarette", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Config.NeedLighter then
        if Player.Functions.GetItemByName("lighter") then
            if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
	            TriggerClientEvent("revolt:consumables:UseCig", source)
        else
            TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
        end
    else
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
	        TriggerClientEvent("revolt:consumables:UseCig", source)
    end
end)

QBCore.Functions.CreateUseableItem('cbdoil', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
	    TriggerClientEvent("revolt:consumables:UseCBD", source)
end)

QBCore.Functions.CreateUseableItem('herbalsupplement', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
	    TriggerClientEvent("revolt:consumables:UseHerbal", source)
end)

QBCore.Functions.CreateUseableItem('chamomiletea', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
	    TriggerClientEvent("revolt:consumables:UseTea", source)
end)