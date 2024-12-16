if IsDuplicityVersion() then
	--- @param playerId string | integer
	--- @param value string
	local function setClipboard(playerId, value)
		if not DoesPlayerExist(playerId --[[@as string]]) then return end

		TriggerClientEvent("setClipboard", playerId --[[@as number]], value)
	end

	exports("setClipboard", setClipboard)
else
	--- @param value string
	local function setClipboard(value)
		SendNUIMessage({
			value = value
		})
	end

	RegisterNetEvent("setClipboard", setClipboard)

	exports("setClipboard", setClipboard)
end
