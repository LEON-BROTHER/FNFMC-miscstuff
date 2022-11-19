function onCreate()
	makeLuaSprite("skyBG", "flchan/limoSunset", -120, -50)
	setScrollFactor("skyBG",0.1,0.1)
	addLuaSprite("skyBG")
	makeAnimatedLuaSprite("bgLimo","flchan/bgLimo",-2600,-350)
	addAnimationByPrefix("bgLimo","move","BG limo",24,true)
	addLuaSprite("bgLimo")
	makeAnimatedLuaSprite("limo","flchan/limoDrive",-700, 400)
	addAnimationByPrefix("limo","move","Limo stage",24,true)
	addLuaSprite("limo")
	
	makeLuaSprite("car", "flchan/fastCarLol",-12800,0)
	
	scaleObject("car",0.3,1)
	updateHitbox("car")
	addLuaSprite("car",true)
	runTimer("carDriveShit",5,10)

	
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == "carDriveShit" then
		fastCarDrive()
	end	
end
function fastCarDrive()
	playSound("carPass0")
	doTweenX("carDrive","car",2000,1.3)
end

function onTweenCompleted(tag)
	if tag == 'carDrive' then
		doTweenX("carReset","car",-14800,0.000000000000000000001)
	end
end
