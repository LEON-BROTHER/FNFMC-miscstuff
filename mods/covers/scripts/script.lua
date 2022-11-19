function onCreatePost() --script made by impostor, credit me now or i will do an unfunny
    makeLuaText("engineText", songName, 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")
    setTextSize("engineText",20)
    setTextColor("engineText", "ebab34")
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
    addLuaScript("iconscript/script")
end


