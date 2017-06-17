--<-.(`-')               _                         <-. (`-')_  (`-')  _                          (`-')              _           (`-') (`-')  _ _(`-')    (`-')  _      (`-')
-- __( OO)      .->     (_)        .->                \( OO) ) ( OO).-/    <-.          .->   <-.(OO )     <-.     (_)         _(OO ) ( OO).-/( (OO ).-> ( OO).-/     _(OO )
--'-'---.\  ,--.'  ,-.  ,-(`-') ,---(`-')  .----.  ,--./ ,--/ (,------. (`-')-----.(`-')----. ,------,) (`-')-----.,-(`-'),--.(_/,-.\(,------. \    .'_ (,------.,--.(_/,-.\
--| .-. (/ (`-')'.'  /  | ( OO)'  .-(OO ) /  ..  \ |   \ |  |  |  .---' (OO|(_\---'( OO).-.  '|   /`. ' (OO|(_\---'| ( OO)\   \ / (_/ |  .---' '`'-..__) |  .---'\   \ / (_/
--| '-' `.)(OO \    /   |  |  )|  | .-, \|  /  \  .|  . '|  |)(|  '--.   / |  '--. ( _) | |  ||  |_.' |  / |  '--. |  |  ) \   /   / (|  '--.  |  |  ' |(|  '--.  \   /   / 
--| /`'.  | |  /   /)  (|  |_/ |  | '.(_/'  \  /  '|  |\    |  |  .--'   \_)  .--'  \|  |)|  ||  .   .'  \_)  .--'(|  |_/ _ \     /_) |  .--'  |  |  / : |  .--' _ \     /_)
--| '--'  / `-/   /`    |  |'->|  '-'  |  \  `'  / |  | \   |  |  `---.   `|  |_)    '  '-'  '|  |\  \    `|  |_)  |  |'->\-'\   /    |  `---. |  '-'  / |  `---.\-'\   /   
--`------'    `--'      `--'    `-----'    `---''  `--'  `--'  `------'    `--'       `-----' `--' '--'    `--'    `--'       `-'     `------' `------'  `------'    `-'    
require "resources/[essential]/es_extended/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "user", "password")

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
