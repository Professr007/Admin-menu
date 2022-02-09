local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('Neon:stvoriVozilo')
AddEventHandler('Neon:stvoriVozilo', function(id, ime)
    local igrac = ESX.GetPlayerFromId(id)
    TriggerClientEvent('esx:spawnVehicle', igrac.source, ime)
end)

RegisterServerEvent('Neon:zaledi')
AddEventHandler('Neon:zaledi', function(id, igr)
    local xPlayer = ESX.GetPlayerFromId(id)
    local igrac = ESX.GetPlayerFromId(igr)
    if xPlayer.getGroup() == 'user' then
        return DropPlayer(id, 'z')
    end
    TriggerClientEvent('Neon:zalediCl', igrac.source)
end)

RegisterServerEvent('Neon:odledi')
AddEventHandler('Neon:odledi', function(id, igr)
    local xPlayer = ESX.GetPlayerFromId(id)
    local igrac = ESX.GetPlayerFromId(igr)
    if xPlayer.getGroup() == 'user' then
        return DropPlayer(id, 'z')
    end
    TriggerClientEvent('Neon:odlediCl', igrac.source)
end)


RegisterServerEvent("Neon_sistem:admin")
AddEventHandler("Neon_sistem:admin", function()

      local xPlayer = ESX.GetPlayerFromId(source)

      if xPlayer.getGroup() == 'moderator' or xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == 'skripter' or xPlayer.getGroup() == 'direktor' or xPlayer.getGroup() == 'suvlasnik' or xPlayer.getGroup() == 'vlasnik' then
          if xPlayer.proveriDuznost() == true then
            TriggerClientEvent("Neon_sistem:admin", source)
          else
            TriggerClientEvent('okokNotify:Alert', source, "ADMIN-SISTEM", "moras da budez na duznosti da otvoris ovo", 5000, 'error')
          end
      else
        TriggerClientEvent('okokNotify:Alert', source, "ADMIN-SISTEM", "Nemas permisiju da radis ovo.", 5000, 'error')
      end

end)


