ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Config = {}

Config.Align = 'bottom-right'

Config.Locales = {
	['menu_label'] = 'Ped-muokkaus',
 	['head'] = 'Pää',
	['mask'] = 'Maskit/Parrat',
	['mask_colour'] = 'Maskin/Parran väri',
	['hair'] = 'Hiukset',
	['hair_colour'] = 'Hiuksien väri',
	['shirt'] = 'Paidat',
	['shirt_colour'] = 'Paidan väri',
	['pants'] = 'Housut',
	['pants_colour'] = 'Housujen väri',
	['hands'] = 'Kädet',
	['hands_colour'] = 'Käsien väri',
	['shoes'] = 'Kengät',
	['shoes_colour'] = 'Kenkien väri',
	['other'] = 'Muut',
	['other_colour'] = 'Muiden väri',
	['backpack'] = 'Reput',
	['backpack_colour'] = 'Repun väri',
	['bag'] = 'Laukut',
	['bag_colour'] = 'Laukun väri',
	['decals'] = 'Tarrat',
	['decals_colour'] = 'Tarran väri',
	['shirt_accessories'] = 'Paidan lisäosat',
	['shirt_accessories_colour'] = 'Paidan lisäosan väri',
	['hat'] = 'Hattu',
	['hat_colour'] = 'Hatun väri',
	['glasses'] = 'Lasit',
	['glasses_colour'] = 'Lasien väri',
	['ears'] = 'Korvakorut',
	['ears_colour'] = 'Korvakorujen väri',
} 

RegisterNetEvent('tonttu_editped')
AddEventHandler('tonttu_editped', function()
	local elements = {}
	table.insert(elements, {
		label      = Config.Locales['head'],
		component  = 0,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 0)-1
	})
	table.insert(elements, {
		label      = Config.Locales['mask'],
		component  = 1,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 1)-1
	})
	table.insert(elements, {
		label      = Config.Locales['mask_colour'],
		component  = 1,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedTextureVariations(PlayerPedId(), 1, GetPedDrawableVariation(PlayerPedId(), 1))-1
	})
	table.insert(elements, {
		label      = Config.Locales['hair'],
		component  = 2,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 2)
	})
	table.insert(elements, {
		label      = Config.Locales['hair_colour'],
		component  = 2,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 2)
	})
	table.insert(elements, {
		label      = Config.Locales['shirt'],
		component  = 3,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 3)
	})
	table.insert(elements, {
		label      = Config.Locales['shirt_colour'],
		component  = 3,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 3)
	})
	table.insert(elements, {
		label      = Config.Locales['pants'],
		component  = 4,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 4)
	})
	table.insert(elements, {
		label      = Config.Locales['pants_colour'],
		component  = 4,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 4)
	})
	table.insert(elements, {
		label      = Config.Locales['hands'],
		component  = 5,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 5)-1
	})
	table.insert(elements, {
		label      = Config.Locales['hands_colour'],
		component  = 5,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 5)
	})
	table.insert(elements, {
		label      = Config.Locales['shoes'],
		component  = 6,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 6)-1
	})
	table.insert(elements, {
		label      = Config.Locales['shoes_colour'],
		component  = 6,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 6)
	})
	table.insert(elements, {
		label      = Config.Locales['other'],
		component  = 7,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 7)
	})
	table.insert(elements, {
		label      = Config.Locales['other_colour'],
		component  = 7,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 7)
	})
	table.insert(elements, {
		label      = Config.Locales['backpack'],
		component  = 8,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 8)-1
	})
	table.insert(elements, {
		label      = Config.Locales['backpack_colour'],
		component  = 8,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 8)
	})
	table.insert(elements, {
		label      = Config.Locales['bag'],
		component  = 9,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 9)-1
	})
	table.insert(elements, {
		label      = Config.Locales['bag_colour'],
		component  = 9,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 9)
	})
	table.insert(elements, {
		label      = Config.Locales['decals'],
		component  = 10,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 10)-1
	})
	table.insert(elements, {
		label      = Config.Locales['decals_colour'],
		component  = 10,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 10)
	})
	table.insert(elements, {
		label      = Config.Locales['shirt_accessories'],
		component  = 11,
		colour     = false,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 11)-1
	})
	table.insert(elements, {
		label      = Config.Locales['shirt_accessories_colour'],
		component  = 11,
		colour     = true,
		prop       = false,
		value      = 0,
		type       = 'slider',
		min        = 0,
		max        = GetNumberOfPedDrawableVariations(PlayerPedId(), 11)
	})
	table.insert(elements, {
		label      = Config.Locales['hat'],
		component  = 0,
		colour     = false,
		prop       = true,
		value      = -1,
		type       = 'slider',
		min        = -1,
		max        = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 0)-1
	})
	table.insert(elements, {
		label      = Config.Locales['hat_colour'],
		component  = 0,
		colour     = true,
		prop       = true,
		value      = 1,
		type       = 'slider',
		min        = 1,
		max        = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0))
	})
	table.insert(elements, {
		label      = Config.Locales['glasses'],
		component  = 1,
		colour     = false,
		prop       = true,
		value      = -1,
		type       = 'slider',
		min        = -1,
		max        = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 1)-1
	})
	table.insert(elements, {
		label      = Config.Locales['glasses_colour'],
		component  = 1,
		colour     = true,
		prop       = true,
		value      = 1,
		type       = 'slider',
		min        = 1,
		max        = GetNumberOfPedPropTextureVariations(PlayerPedId(), 1, GetPedPropIndex(PlayerPedId(), 1))
	})
	table.insert(elements, {
		label      = Config.Locales['ears'],
		component  = 2,
		colour     = false,
		prop       = true,
		value      = -1,
		type       = 'slider',
		min        = -1,
		max        = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 1)-1
	})
	table.insert(elements, {
		label      = Config.Locales['ears_colour'],
		component  = 2,
		colour     = true,
		prop       = true,
		value      = 1,
		type       = 'slider',
		min        = 1,
		max        = GetNumberOfPedPropTextureVariations(PlayerPedId(), 1, GetPedPropIndex(PlayerPedId(), 1))
	})
	ESX.UI.Menu.Open(
	    'default', GetCurrentResourceName(), 'tonttu_editped',
	    {
	        title    = Config.Locales['menu_label'],
	        align    = Config.Align,
	        elements = elements,
	    },
	    function(data, menu)
			local val = data.current.value
			local prop = data.current.prop
			local colour = data.current.colour
			local component = data.current.component
	    	if val ~= nil then
				if prop == false then
					if colour then
						SetPedComponentVariation(PlayerPedId(), component, GetPedDrawableVariation(PlayerPedId(), component), val, 0)
					else
						SetPedComponentVariation(PlayerPedId(), component, val, 0, 0)
					end
				else
					if colour then
						SetPedPropIndex(PlayerPedId(), component, GetPedPropIndex(PlayerPedId(), component), val, 0)
					else
						if val == -1 then
							ClearPedProp(PlayerPedId(), 0)
						end
						SetPedPropIndex(PlayerPedId(), component, val, 1, 0)
					end
	    		end
			end
	    end,
	    function(data, menu)
	        menu.close()
	    end
	)
end)
