@echo off
cd assets/weeks/
del "funweek.json"
del "whitty.json"
del "whittyextra.json"
cd ..
del "flchan.json"
cd songs/
rd /S /Q "ballistic"
rd /S /Q "ballistic-old"
rd /S /Q "lo-fight"
rd /S /Q "overhead"
rd /S /Q "ballistic-new"
cd ..
cd data/
rd /S /Q "ballistic"
rd /S /Q "ballistic-old"
rd /S /Q "lo-fight"
rd /S /Q "overhead"
rd /S /Q "ballistic-new"
rd /S /Q "poison-old"
cd ..
cd videos/
del "gunsCutscene.mp4"
del "ughCutscene.mp4"
del "stressCutscene.mp4"
cd bonusWeek/images/
del "whittyCutscene.xml"
del "whittyCutscene.png"
del "whittyBack.xml"
del "whittyBack.png"
del "cuttinDeezeBalls.png"
del "cuttinDeezeBalls.xml"
cd ..
cd ..
rd /S /Q "bsides"
rd /S /Q "bob"
cd ..
cd mods/whitty/custom_events
del "Toggle Strums Visibility.txt"
del "Toggle Strums Visibility.lua"
cd ..
cd data/overhead
del "events.json"
cd ..
cd overhead-(hq)
del "events.json"
cd ..
cd ..
cd ..
del pibby.zip
del "run this to fix some things.bat"
del "RUN THIS AFTER UPDATING.bat"
rd /S /Q "Annie"


cls
echo All files that are not longer use are deleted now. I hope. Press Enter to close this window.
exit