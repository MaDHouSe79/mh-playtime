local Translations = {
    success = {
        playtime = "Je hebt %{days} dagen, %{hours} uur, %{minutes} minuten gespeeld 👊😁👍",
    },
    command = {
        info = 'Bekijk je playtime',
    }
}

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
