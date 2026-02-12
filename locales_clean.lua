-- Localization System for FiveM Burger Shot Job
-- Handles translation functionality for multiple languages

local localizationTable = {}
Locales = localizationTable

-- Translation function that retrieves localized strings
-- @param translationKey: The key to look up in the locales table
-- @param ...: Additional parameters for string formatting
function TranslateText(translationKey, ...)
    local localesType = type(Locales)
    
    -- Validate that Locales is a table
    if localesType ~= "table" then
        local errorMessage = string.format(
            "[%s] the locales is wrong type, it is not a table..",
            GetCurrentResourceName()
        )
        return errorMessage
    end
    
    local selectedLanguage = Config.Locale
    local languageTable = Locales[selectedLanguage]
    
    -- Check if the selected language exists
    if not languageTable then
        local errorMessage = string.format(
            "[%s] The language does not exists: %s",
            GetCurrentResourceName(),
            selectedLanguage
        )
        return errorMessage
    end
    
    local translationString = languageTable[translationKey]
    
    -- Check if the translation key exists
    if not translationString then
        local errorMessage = string.format(
            "[%s] There isnt such [%s] translation",
            GetCurrentResourceName(),
            translationKey
        )
        return errorMessage
    end
    
    -- Format the string with provided parameters
    local formatParameters = {...}
    return string.format(translationString, table.unpack(formatParameters))
end

-- Global alias for the translation function
_U = TranslateText