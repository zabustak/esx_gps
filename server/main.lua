ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

AddEventHandler('esx:onAddInventoryItem', function(source, item, count)
	if item == 'gps' then
		TriggerClientEvent('esx_gps:addGPS', source)
	end
end)

AddEventHandler('esx:onRemoveInventoryItem', function(source, item, count)
	if item == 'gps' and count < 1 then
		TriggerClientEvent('esx_gps:removeGPS', source)
	end
end)