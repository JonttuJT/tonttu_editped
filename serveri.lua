Config = {}

Config.Allowed = {
    'steam:11000013e01029d',
    'steam:11000013d75a23f',
}

function isAllowed(player)
    local allowed = false
    for i,id in ipairs(Config.Allowed) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end

RegisterCommand('editped', function(source, args, rawCommand)
	if isAllowed(source) then
		TriggerClientEvent('tonttu_editped', source)
	end
end, false)