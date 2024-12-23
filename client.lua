if IsDuplicityVersion() then return end

---@param content string
local function setClipboard(content)
	assert(type(content) == "string", ("Failed to set clipboard. Expected string, got %s"):format(type(content)))

	SendNUIMessage({
		action = "SET_CLIPBOARD",
		content = content
	})
end

---@param url string
local function openURL(url)
	assert(type(url) == "string", ("Failed to open URL. Expected string, got %s"):format(type(url)))

	SendNUIMessage({
		action = "OPEN_URL",
		url = url
	})
end

exports("setClipboard", setClipboard)
exports("openURL", openURL)
