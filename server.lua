require "resources/[essential]/es_extended/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "dev", "dev12")

RegisterServerEvent("Reccana")
AddEventHandler("Reccana", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 50000) then
		xPlayer:removeMoney(50000)
		TriggerClientEvent("esx:showNotification", _source, "Caché dans les montagnes près d une autoroute")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Tracana")
AddEventHandler("Tracana", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 50000) then
		xPlayer:removeMoney(50000)
		TriggerClientEvent("esx:showNotification", _source, "Les hippies contôlent le traitement")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Vencana")
AddEventHandler("Vencana", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 75000) then
		xPlayer:removeMoney(75000)
		TriggerClientEvent("esx:showNotification", _source, "Un gang de bikers trainent pas loin")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Reccoca")
AddEventHandler("Reccoca", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 100000) then
		xPlayer:removeMoney(100000)
		TriggerClientEvent("esx:showNotification", _source, "Sur la côte EST, direction une plage sur le bas côté")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Tracoca1")
AddEventHandler("Tracoca1", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 100000) then
		xPlayer:removeMoney(100000)
		TriggerClientEvent("esx:showNotification", _source, "Un garage non loin du commisariat")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Tracoca2")
AddEventHandler("Tracoca2", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 100000) then
		xPlayer:removeMoney(100000)
		TriggerClientEvent("esx:showNotification", _source, "Un entrepot portuaire")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Tracoca3")
AddEventHandler("Tracoca3", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 100000) then
		xPlayer:removeMoney(100000)
		TriggerClientEvent("esx:showNotification", _source, "Un appartement près de la plage")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Vencoca")
AddEventHandler("Vencoca", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 150000) then
		xPlayer:removeMoney(150000)
		TriggerClientEvent("esx:showNotification", _source, "Beaucoup de femmes dénudées")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Blanchi1")
AddEventHandler("Blanchi1", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 200000) then
		xPlayer:removeMoney(200000)
		TriggerClientEvent("esx:showNotification", _source, "Une rumeur dit qu'un barbier en ville s'en occuperait")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)

RegisterServerEvent("Blanchi2")
AddEventHandler("Blanchi2", function()
	local _source = source
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		if (tonumber(xPlayer.player.money) >= 200000) then
		xPlayer:removeMoney(200000)
		TriggerClientEvent("esx:showNotification", _source, "A l'arrière cours d'un golf à l'abri des regards")
		else
		TriggerClientEvent("esx:showNotification", _source, "Vous n'avez pas assez d'argent")
		end
	end)
end)