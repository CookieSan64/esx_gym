ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_gym:addItem')
AddEventHandler('esx_gym:addItem', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if item == 'protein_shake' and xPlayer.getMoney() >= Config['PriceProteinShake'] then
		xPlayer.removeMoney(Config['PriceProteinShake'])
		xPlayer.addInventoryItem(item, 1)
		TriggerClientEvent('esx:showNotification', _source, "Vous avez acheté un shake protéiné")
	elseif item == 'sportlunch' and xPlayer.getMoney() >= Config['Sportlunch'] then
		xPlayer.removeMoney(Config['Sportlunch'])
		xPlayer.addInventoryItem(item, 1)
		TriggerClientEvent('esx:showNotification', _source, "Vous avez acheté une ration de nourriture pour sportifs")
	elseif item == 'powerade' and xPlayer.getMoney() >= Config['Powerade'] then
		xPlayer.removeMoney(Config['Powerade'])
		xPlayer.addInventoryItem(item, 1)
		TriggerClientEvent('esx:showNotification', _source, "vous avez acheté un powerade")
	end
end)

ESX.RegisterUsableItem('protein_shake', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('protein_shake', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', Config['AddProteinShake'])
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez bu un ~g~shake protéiné')

end)

ESX.RegisterUsableItem('sportlunch', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sportlunch', 1)
	TriggerClientEvent('esx_status:add', source, 'hunger', Config['AddSportLunch'])
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez mangé un ~g~déjeuner sportif')

end)

ESX.RegisterUsableItem('powerade', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('powerade', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', Config['AddPowerade'])
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez bu une ~g~powerade')

end)
