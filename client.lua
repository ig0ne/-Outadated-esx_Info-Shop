--<-.(`-')               _                         <-. (`-')_  (`-')  _                          (`-')              _           (`-') (`-')  _ _(`-')    (`-')  _      (`-')
-- __( OO)      .->     (_)        .->                \( OO) ) ( OO).-/    <-.          .->   <-.(OO )     <-.     (_)         _(OO ) ( OO).-/( (OO ).-> ( OO).-/     _(OO )
--'-'---.\  ,--.'  ,-.  ,-(`-') ,---(`-')  .----.  ,--./ ,--/ (,------. (`-')-----.(`-')----. ,------,) (`-')-----.,-(`-'),--.(_/,-.\(,------. \    .'_ (,------.,--.(_/,-.\
--| .-. (/ (`-')'.'  /  | ( OO)'  .-(OO ) /  ..  \ |   \ |  |  |  .---' (OO|(_\---'( OO).-.  '|   /`. ' (OO|(_\---'| ( OO)\   \ / (_/ |  .---' '`'-..__) |  .---'\   \ / (_/
--| '-' `.)(OO \    /   |  |  )|  | .-, \|  /  \  .|  . '|  |)(|  '--.   / |  '--. ( _) | |  ||  |_.' |  / |  '--. |  |  ) \   /   / (|  '--.  |  |  ' |(|  '--.  \   /   / 
--| /`'.  | |  /   /)  (|  |_/ |  | '.(_/'  \  /  '|  |\    |  |  .--'   \_)  .--'  \|  |)|  ||  .   .'  \_)  .--'(|  |_/ _ \     /_) |  .--'  |  |  / : |  .--' _ \     /_)
--| '--'  / `-/   /`    |  |'->|  '-'  |  \  `'  / |  | \   |  |  `---.   `|  |_)    '  '-'  '|  |\  \    `|  |_)  |  |'->\-'\   /    |  `---. |  '-'  / |  `---.\-'\   /   
--`------'    `--'      `--'    `-----'    `---''  `--'  `--'  `------'    `--'       `-----' `--' '--'    `--'    `--'       `-'     `------' `------'  `------'    `-'    
local options = {
    x = 0.1,
    y = 0.2,
    width = 0.2,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "Informations",
    menu_subtitle = "Categories",
    color_r = 30,
    color_g = 144,
    color_b = 255,
}

RegisterNetEvent("mp:firstspawn")
AddEventHandler("mp:firstspawn",function()
	Main() -- Menu to draw
    Menu.hidden = not Menu.hidden -- Hide/Show the menu
    Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = false
end)

function changemodel(model)
	
	local modelhashed = GetHashKey(model)

	RequestModel(modelhashed)
	while not HasModelLoaded(modelhashed) do 
	    RequestModel(modelhashed)
	    Citizen.Wait(0)
	end

	SetPlayerModel(PlayerId(), modelhashed)
	local a = "" -- nil doesnt work
	SetPedRandomComponentVariation(GetPlayerPed(-1), true)
	SetModelAsNoLongerNeeded(modelhashed)
end

function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function Main()
    options.menu_subtitle = "Magasin             Page 1 sur 1"
    ClearMenu()
    	Menu.addButton("Récolte Cannabis (50k$)", "Recana", nil)
    	Menu.addButton("Traitement Cannabis (50k$)", "Trcana", nil)
	Menu.addButton("Vente de Cannabis (75k$)", "Vecana", nil)
	Menu.addButton("Blanchiment argent 1 (200k$)", "Blanch1", nil)
	Menu.addButton("Blanchiment argent 2 (200k$)", "Blanch2", nil)
end

------------------------------
--FONCTIONS
-------------------------------
local twentyfourseven_shops = {
	{ ['x'] = 982.266540527344, ['y'] = -103.529335021973, ['z'] = 74.8487396240234 },
}

Citizen.CreateThread(function()
	for k,v in ipairs(twentyfourseven_shops)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, 304)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Infos shop")
		EndTextCommandSetBlipName(blip)
	end
end)

RegisterNetEvent("Rcana")
AddEventHandler("Rcana", function()
	Menu.hidden = false  
end)

function Recana()
    TriggerServerEvent("Reccana")
	Menu.hidden = false
end

RegisterNetEvent("Tcana")
AddEventHandler("Tcana", function()
	Menu.hidden = false  
end)

function Trcana()
    TriggerServerEvent("Tracana")
	Menu.hidden = false
end

RegisterNetEvent("Vcana")
AddEventHandler("Vcana", function()
	Menu.hidden = false  
end)

function Vecana()
    TriggerServerEvent("Vencana")
	Menu.hidden = false
end

RegisterNetEvent("Blanc1")
AddEventHandler("Blanc1", function()
	Menu.hidden = false  
end)

function Blanch1()
    TriggerServerEvent("Blanchi1")
	Menu.hidden = false
end

RegisterNetEvent("Blanc2")
AddEventHandler("Blanc2", function()
	Menu.hidden = false  
end)

function Blanch2()
    TriggerServerEvent("Blanchi2")
	Menu.hidden = false
end




-------------------------
---INVENTAIRE
-------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press F2 to open menu
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		for k,v in ipairs(twentyfourseven_shops) do
			if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 20.0)then
				DrawMarker(1, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 86, 115, 154, 165, 0,0, 0,0)
				if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 2.0)then
					DisplayHelpText("Appuyer sur ~INPUT_VEH_EXIT~ pour ~g~ouvrir le menu.")
					if IsControlJustPressed(1, 23) then
                        Main()
                        Menu.hidden = not Menu.hidden
				    end
                  Menu.renderGUI(options)
                end
            end
		end
	end
end)
