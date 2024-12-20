if IsDuplicityVersion() then return end

--- @param value string
local function setClipboard(value)
	assert(type(value) == "string", ("Failed to set clipboard. Expected string, got %s"):format(type(value)))

	SendNUIMessage({
		action = "SET_CLIPBOARD",
		content = value
	})
end

--- @param url string
local function openURL(url)
	assert(type(url) == "string", ("Failed to open URL. Expected string, got %s"):format(type(url)))

	SendNUIMessage({
		action = "OPEN_URL",
		url = url
	})
end

exports("setClipboard", setClipboard)
exports("openURL", openURL)
