local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ludijutuber:stvoriVozilo')
AddEventHandler('ludijutuber:stvoriVozilo', function(id, ime)
    local igrac = ESX.GetPlayerFromId(id)
    TriggerClientEvent('esx:spawnVehicle', igrac.source, ime)
end)
