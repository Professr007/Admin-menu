ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('tpmenu:open')
AddEventHandler('tpmenu:open', function()
	OtvoriLokacije()
end)



function OtvoriLokacije()
	local playerPed = PlayerPedId()
	local elements = {
		{label = 'Ostrvo |🌴',  value = 'ostrvo'},
		{label = 'Banka | 💲',   value = 'banka'},
		{label = 'Auto Salon | 🚗',  value = 'autosalon'},
		{label = 'Opstina | 🌇',  value = 'opstina'},
		{label = 'Auto Skola | 🏫',  value = 'askola'},
		{label = 'Ikea | 🛒',  value = 'ikea'},
		{label = 'Sud | ⚖️',  value = 'sud'},
		{label = 'Zatvor | 🚨',  value = 'zatvor'},
		{label = 'Markeri | 🧹',  value = 'markeri'},
		{label = 'Groblje | ⚰️',  value = 'groblje'},
		{label = 'A Garaza | 🏬',  value = 'agaraza'},
		{label = 'B Garaza | 🏬',  value = 'bgaraza'},
		{label = 'C Garaza | 🏬',  value = 'cgaraza'},
		{label = 'D Garaza | 🏬',  value = 'dgaraza'},
		{label = 'E Garaza | 🏬',  value = 'egaraza'},
		{label = 'F Garaza | 🏬',  value = 'fgaraza'},
		{label = 'G Garaza | 🏬',  value = 'ggaraza'},
		{label = 'H Garaza | 🏬',  value = 'hgaraza'},
	}
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'tpmenu_actions', {
		title    = 'Lokacije | 📁',
		align    = 'bottom-right',
		elements = elements
	}, function(data, menu)
		local type = data.current.value

		if type == 'banka' then
			ESX.Game.Teleport(playerPed, {
				x = 226.61,
				y = 207.43,
				z = 105.51
			})
		elseif type == 'ostrvo' then
			ESX.Game.Teleport(playerPed, {
				x = 4448.17,
				y = -4483.71,
				z = 4.23
			})
		elseif type == 'autosalon' then
			ESX.Game.Teleport(playerPed, {
				x = -55.41,
				y = 68.33,
				z = 71.95
			})
		elseif type == 'opstina' then
			ESX.Game.Teleport(playerPed, {
				x = -151.86,
				y = 6298.54,
				z = 31.49
			})
		elseif type == 'askola' then
			ESX.Game.Teleport(playerPed, {
				x = 228.03,
				y = 372.89,
				z = 106.11
			})
		elseif type == 'agaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 1433.49,
				y = -2605.8,
				z = 48.13
			})
		elseif type == 'bgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 273.67,
				y = -344.15,
				z = 44.92
			})
		elseif type == 'cgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -1803.9,
				y = -341.46,
				z = 43.99
			})
		elseif type == 'dgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -332.2,
				y = -736.5,
				z = 33.97
			})
		elseif type == 'egaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 344.64,
				y = -1688.33,
				z = 32.53
			})
		elseif type == 'fgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = 1893.89,
				y = 3714.77,
				z = 32.78
			})
		elseif type == 'ggaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -38.42,
				y = 6419.79,
				z = 31.49
			})
		elseif type == 'hgaraza' then
			ESX.Game.Teleport(playerPed, {
				x = -658.72,
				y = -2369.52,
				z = 13.95
			})
		elseif type == 'ikea' then
			ESX.Game.Teleport(playerPed, {
				x = 2763.84,
				y = 3466.4,
				z = 55.66
			})
		elseif type == 'pawns' then
			ESX.Game.Teleport(playerPed, {
				x = -815.53,
				y = -750.9,
				z = 22.93
			})
		elseif type == 'sud' then
			ESX.Game.Teleport(playerPed, {
				x = 242.61,
				y = -392.53,
				z = 46.31
			})
		elseif type == 'zatvor' then
			ESX.Game.Teleport(playerPed, {
				x = 736.42,
				y = 131.01,
				z = 80.71
			})
		elseif type == 'crkva' then
			ESX.Game.Teleport(playerPed, {
				x = 237.55,
				y = -406.74,
				z = 47.92
			})
		elseif type == 'markeri' then
			ESX.Game.Teleport(playerPed, {
				x = -1266.95,
				y = -3013.17,
				z = -48.49
			})
		elseif type == 'groblje' then
			ESX.Game.Teleport(playerPed, {
				x = -1591.77,
				y = -299.34,
				z = 51.82
			})
		end
	end, function(data, menu)
		menu.close()
	end)
end


RegisterNetEvent("tpmenu:open")
AddEventHandler("tpmenu:open", function()
  ESX.TriggerServerCallback("esx_marker:fetchUserRank", function(playerRank)
    if playerRank == "moderator" or playerRank == "admin1" or playerRank == "admin2" or playerRank == "admin3" or playerRank == "superadmin" or playerRank == "skripter" or playerRank == "direktor"  or playerRank == "suvlasnik"  or playerRank == "vlasnik" then
      OtvoriLokacije()
    else
    end
  end)
end)

--------------------------------------------------------------------------
ESX = nil

local playerData 				= {}
local nevidljivost = false

function OtvoriAdminMeni()

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'admin_meni',
  {
    css      = 'meni',
    title    = 'Admin Meni | 🔑',
    align    = 'top-left',
    elements = {
      --{label = 'Stvori Vozilo | 🚗', value = 'vozilo'},
      {label = 'Stvori Vozilo | 🚗', value = 'vozilo'},
      {label = 'Lokacije | 💍', value = 'lokacije'},
      {label = 'Nevidljivost | 🌟', value = 'nevidljivost'},
      {label = 'Motor | 🛵', value = 'adminmeni'},
      {label = 'Admin auto | 🛵', value = 'adminauto'},
      {label = 'Posmatraj | 🔭', value = 'posmatraj'},
      {label = 'Obrisi Vozilo | 🚗', value = 'dv'},
      {label = 'Popravi | 🔧', value = 'fix'},
      {label = 'Ocisti | 🧽', value = 'clean'},
      {label = 'Freeze | 🥶', value = 'zaledi'},
      {label = 'Unfreeze | 🥶', value = 'odledi'},
    }
  },

    
    function(data, menu)

      if data.current.value == 'vozilo' then
        local vozilo = UnosTastatura('Ime Vozila', 'Upisi Tekst', 100)
        local id = UnosTastatura('ID', '', 100)

        if vozilo ~= nil and id ~= nil then
            TriggerServerEvent('Neon:stvoriVozilo', id, vozilo)
        else
            ESX.ShowNotification('Prekinuo si radnju')
        end
      end 
      if data.current.value == 'nevidljivost' then
        if nevidljivost == false then
          SetEntityVisible(GetPlayerPed(-1), false)
          exports['okokNotify']:Alert("Nevidljivost", "Nevidjlivost je uključena!", 5000, 'info')
          nevidljivost = true
        else
          SetEntityVisible(GetPlayerPed(-1), true)
          exports['okokNotify']:Alert("Nevidljivost", "Nevidjlivost je isključena!", 5000, 'info')
          nevidljivost = false
        end
      end

    if data.current.value == 'zaledi' then
      local id = UnosTastatura('ID', '', 100)
      if id ~= nil then
          TriggerServerEvent('Neon:zaledi', GetPlayerServerId(PlayerId()), id)
      else
          ESX.ShowNotification('Prekinuo si radnju')
      end
    end
    if data.current.value == 'odledi' then
      local id = UnosTastatura('ID', '', 100)
      if id ~= nil then
          TriggerServerEvent('Neon:odledi', GetPlayerServerId(PlayerId()), id)
      else
          ESX.ShowNotification('Prekinuo si radnju')
      end
    end
      if data.current.value == 'lokacije' then
        TriggerEvent('tpmenu:open')
        OtvoriLokacije()
        ESX.UI.Menu.CloseAll()
      end 

      if data.current.value == 'adminmeni' then
        TriggerEvent('esx:spawnVehicle', 'blista2')
        ESX.UI.Menu.CloseAll()
      end

      if data.current.value == 'adminauto' then
        TriggerEvent('esx:spawnVehicle', 'admin')
        ESX.UI.Menu.CloseAll()
      end

      if data.current.value == 'posmatraj' then
        TriggerEvent('esx_spectate:spectate')
      end
      if data.current.value == 'clean' then
      TriggerEvent('Neon_repair:ocisti')
      end

      if data.current.value == 'dv' then
        TriggerEvent('esx:deleteVehicle')
      end

      if data.current.value == 'fix' then
        TriggerEvent('Neon_repair:popravi')
      end
  end,
    function(data, menu)
      menu.close()
    end
  )
end

RegisterNetEvent('Neon:zalediCl')
AddEventHandler('Neon:zalediCl', function()
    FreezeEntityPosition(PlayerPedId(), true)
end)


RegisterNetEvent('Neon:odlediCl')
AddEventHandler('Neon:odlediCl', function()
    FreezeEntityPosition(PlayerPedId(), false)
end)

RegisterNetEvent("Neon_sistem:admin")
AddEventHandler("Neon_sistem:admin", function()
      OtvoriAdminMeni()
end)

RegisterCommand('adminmeni',function()
  TriggerServerEvent('Neon_sistem:admin')
end,false)

RegisterKeyMapping('adminmeni', 'Admin Meni', 'keyboard', 'F9')

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)