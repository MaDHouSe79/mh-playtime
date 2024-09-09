local Translations = {
    success = {
        playtime = "Je hebt %{days} dagen, %{hours} uur, %{minutes} minuten gespeeld 👊😁👍",
    },
    command = {
        info = 'Bekijk je playtime',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true,
    fallbackLang = Lang,
})
