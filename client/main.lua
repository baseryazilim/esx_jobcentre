local menuIsShowed, hasAlreadyEnteredMarker, isInMarker = false, false, false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local display = false



function SetDisplay(bool)
    print(bool)
    display = bool
    SetNuiFocus(true,true)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)

end)

RegisterNUICallback("main", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("ambulance", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setambulance')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('ambulance') .. _U('whitelist_job')})
end)

RegisterNUICallback("banker", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setbanker')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('banker') .. _U('whitelist_job')})
end)

RegisterNUICallback("cardealer", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setcardealer')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('cardealer') .. _U('whitelist_job')})
end)

RegisterNUICallback("fisherman", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setfisherman')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('fisherman') .. _U('job_success')})
end)

RegisterNUICallback("fueler", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setfueler')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('fueler') .. _U('job_success')})
end)

RegisterNUICallback("lumberjack", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setlumberjack')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('lumberjack') .. _U('job_success')})
end)

RegisterNUICallback("mechanic", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setmechanic')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('mechanic') .. _U('whitelist_job')})
end)

RegisterNUICallback("miner", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setminer')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('miner') .. _U('job_success')})
end)

RegisterNUICallback("police", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setpolice')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('police') .. _U('whitelist_job')})
end)

RegisterNUICallback("realestateagent", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setrealestateagent')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('realestateagent') .. _U('whitelist_job')})
end)

RegisterNUICallback("reporter", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setreporter')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('reporter') .. _U('coming_soon')})
end)

RegisterNUICallback("slaughterer", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setslaughterer')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('slaughterer') .. _U('job_success')})
end)

RegisterNUICallback("tailor", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:settailor')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('tailor') .. _U('job_success')})
end)

RegisterNUICallback("taxi", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:settaxi')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('taxi') .. _U('whitelist_job')})
end)

RegisterNUICallback("cleaner", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setcleaner')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('cleaner') .. _U('coming_soon')})
end)

RegisterNUICallback("delivery", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setdelivery')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('delivery') .. _U('coming_soon')})
end)

RegisterNUICallback("garbage", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setgarbage')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('garbage') .. _U('coming_soon')})
end)

RegisterNUICallback("gardener", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setgardener')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('gardener') .. _U('coming_soon')})
end)

RegisterNUICallback("technician", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:settechnician')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('technician') .. _U('coming_soon')})
end)

RegisterNUICallback("unemployed", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setunemployed')
    TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = _U('unemployed') .. _U('unemployed_jobs')})
end)


AddEventHandler('esx_jobcentre:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
end)

-- Activate menu when player is inside marker, and draw markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)

		local coords = GetEntityCoords(PlayerPedId())
		isInMarker = false

		for i=1, #Config.Zones2, 1 do
			local distance = GetDistanceBetweenCoords(coords, Config.Zones2[i], true)

			if distance < Config.DrawDistance then
				DrawMarker(Config.MarkerType, Config.Zones2[i], 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end

			if distance < (Config.ZoneSize.x / 2) then
				isInMarker = true
				ESX.ShowHelpNotification(_U('access_job_center'))
			end
		end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_jobcentre:hasExitedMarker')
		end
	end
end)

-- Create blips
Citizen.CreateThread(function()
	for i=1, #Config.Zones2, 1 do
		local blip = AddBlipForCoord(Config.Zones2[i])

		SetBlipSprite (blip, 408)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.75)
		SetBlipColour (blip, 4)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('job_center'))
		EndTextCommandSetBlipName(blip)
	end
end)

-- Menu Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, 38) and isInMarker and not menuIsShowed then
			ESX.UI.Menu.CloseAll()
			SetDisplay(true)
		end
	end
end)

Citizen.CreateThread(function()
    RequestModel(GetHashKey("u_f_y_princess"))
    while not HasModelLoaded(GetHashKey("u_f_y_princess")) do
        Wait(1)
    end
    npc = CreatePed(1, GetHashKey("u_f_y_princess"), -139.03, -633.95, 160.00, 0, false, true) -- x: -139.03, y: -633.95, z: 168.82, heading: 0
    SetPedCombatAttributes(npc, 46, true)                  
    SetPedFleeAttributes(npc, 0, 0)                  
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)
