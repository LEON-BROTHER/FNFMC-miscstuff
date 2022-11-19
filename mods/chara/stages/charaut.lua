function onCreate()
    
    makeLuaSprite('bg','utchara/chara-bg',-250, -100);
	addLuaSprite('bg',false);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
    scaleObject('bg',1.15,1.15);
    updateHitbox("bg");
    
end

function onStepHit()
    if curStep == 2052 then
         setCharacterX("bf",100);
         setCharacterX("dad",770);
    end
    if curStep == 2276 then
        setCharacterX("bf",770);
        setCharacterX("dad",100);
    end
end