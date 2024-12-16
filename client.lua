--- @param value string
local function setClipboard(value)
	assert(type(value) == "string", ("Failed to copy to clipboard, expected string. Got %s"):format(type(value)))

	SendNUIMessage({
		value = value
	})
end

exports("setClipboard", setClipboard)
