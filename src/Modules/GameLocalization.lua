-- Path of Building
--
-- Module: Game Localization
-- Loads optional official game text overlays without changing internal English keys.
--

local GameLocalization = {
	cache = { },
}

local function normaliseLocale(locale)
	return locale and locale:lower():gsub("[_%-%s]", "") or nil
end

function GameLocalization:GetLocale()
	if localize and localize.GetLocale then
		return localize:GetLocale()
	end
	return "en"
end

function GameLocalization:GetOverlay(kind, locale)
	locale = locale or self:GetLocale()
	local normalisedLocale = normaliseLocale(locale)
	if not normalisedLocale or normalisedLocale == "en" or normalisedLocale == "english" then
		return nil
	end
	self.cache[normalisedLocale] = self.cache[normalisedLocale] or { }
	if self.cache[normalisedLocale][kind] ~= nil then
		return self.cache[normalisedLocale][kind] or nil
	end

	local modulePath = "Data/Locales/"..normalisedLocale.."/"..kind
	local filePath = modulePath..".lua"
	local handle = io.open(filePath, "rb")
	if not handle then
		self.cache[normalisedLocale][kind] = false
		return nil
	end
	handle:close()

	self.cache[normalisedLocale][kind] = LoadModule(modulePath)
	return self.cache[normalisedLocale][kind]
end

return GameLocalization
