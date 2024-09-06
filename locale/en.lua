local Translations = {
    success = {
        playtime = "You've played %{days} days, %{hours} hours, %{minutes} minutes 👊😁👍",
    },
    command = {
        info = 'Check your playtime',
    }
}

if GetConvar('qb_locale', 'en') == 'en' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
