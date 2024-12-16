if IsDuplicityVersion() then return end

---@param value string
exports("setClipboard", function(value)
	SendNUIMessage({
		value = value
	})
end)
