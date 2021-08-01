--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001

ESX          = nil
local IsDead = false
local IsAnimated = false
local IsAlreadyDrunk = false
local DrunkLevel     = -1

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001

RegisterNetEvent('esx_Blackouthack:wyjebprad')
AddEventHandler('esx_Blackouthack:wyjebprad', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('anim@cellphone@in_car@ps', function()
				TriggerEvent("mythic_progbar:client:progress", {
					name = "unique_action_name",
					duration = 35000,
					label = "Trwa hakowanie",
					useWhileDead = false,
					canCancel = true,
					controlDisables = {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
					},
					animation = {
						animDict = "amb@world_human_stand_mobile@male@text@base",
						anim = "base",
					}
				}, function(status)
					if not status then
					end
				end)
				Citizen.Wait(35000)
				SetArtificialLightsState(true)
				Citizen.Wait(500000)
				SetArtificialLightsState(false)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001


RegisterNetEvent('esx_Blackouthack:wlaczprad')
AddEventHandler('esx_Blackouthack:wlaczprad', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or ''
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@world_human_stand_mobile@male@text@base', function()
				TaskPlayAnim(playerPed, 'amb@world_human_stand_mobile@male@text@base', 'base', 1.0, -1.0, 2000, 0, 1, true, true, true)
				Citizen.Wait(1000)
				SetArtificialLightsState(true)
				Citizen.Wait(1000)
				SetArtificialLightsState(false)
				Citizen.Wait(1000)
				SetArtificialLightsState(true)
				Citizen.Wait(1000)
				SetArtificialLightsState(false)
				
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end) 

RegisterNetEvent('esx_Blackouthack:wylaczpradadmin')
AddEventHandler('esx_Blackouthack:wylaczpradadmin', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or ''
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@world_human_stand_mobile@male@text@base', function()
				TaskPlayAnim(playerPed, 'amb@world_human_stand_mobile@male@text@base', 'base', 1.0, -1.0, 2000, 0, 1, true, true, true)
				Citizen.Wait(1000)
				SetArtificialLightsState(false)
				Citizen.Wait(1000)
				SetArtificialLightsState(true)
				Citizen.Wait(1000)
				SetArtificialLightsState(false)
				Citizen.Wait(1000)
				SetArtificialLightsState(true)
				
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end) 

--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001
