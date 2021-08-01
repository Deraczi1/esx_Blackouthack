--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--================== WYJEBAC PRAD EZ ==================--

ESX.RegisterUsableItem('tabletwyjebaniaproad', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tabletwyjebaniaproad', 1)

	TriggerClientEvent('esx_Blackouthack:wyjebprad', source)
	
end)


TriggerEvent('es:addGroupCommand', 'wlaczprad', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local target = tonumber(args[1])
		
		-- is the argument a number?
		if target ~= nil then
			
			-- is the number a valid player?
			if GetPlayerName(target) then
			else
			end
		else
		end
	else
		TriggerClientEvent('esx_Blackouthack:wlaczprad', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "Miasto", {255, 0, 0}, "Brak Permisji.")
end, {help = ""})



Citizen.CreateThread(function()
	Citizen.Wait(7500)
	print("^5Skrypt by Deraczi#0001")
end)

--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001
--Skrypt by Deraczi#0001
