function onSongStart()
    
end
function onCreate()
    makeLuaText("credstuff", songName + " "+getProperty("storyDifficultyText"), 1280, 0, 700)
    setTextSize("credstuff", 15)
    setTextFont("credstuff", 'Ubuntu-B.ttf')
    addLuaText("credstuff")
    setTextAlignment("credstuff",'left')
    if downscroll then
        doTweenY("credstuff", "credstuff", 0, 0.0001, "linear")
        setTextAlignment("credstuff",'right')
        setTextWidth("credstuff",1280)
    end
end
