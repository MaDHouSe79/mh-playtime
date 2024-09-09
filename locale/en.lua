local Translations = {
    success = {
        playtime = "You've played %{days} days, %{hours} hours, %{minutes} minutes 👊😁👍",
    },
    command = {
        info = 'Check your playtime',
    }
}


Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true,
    fallbackLang = Lang,
})
