if IsDuplicityVersion() then return end

---@param value any
exports("setClipboard", function(value)
	SendNUIMessage({
		value = value
	})
end)
