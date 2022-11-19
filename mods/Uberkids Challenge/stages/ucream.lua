--surprise!!! there are no events here
--every event is a chart event and as such is part of the chart, that way the stage can be used again
--just a fun challenge for myself
--best port btw

local darnellAtt = false;
local neneAtt = false;

function onCreate()

    precacheImage('stage/bussin');
    precacheImage('stage/explosionfrom_edd');

    setPropertyFromClass('GameOverSubstate', 'characterName', 'picodeath');
	-- setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'laser_moment');
	-- setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'chaosgameover');
	-- setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');

    makeLuaSprite('sky', 'stage/Sky', -275, -250);
    scaleObject('sky', 1.25, 1.25);

    makeLuaSprite('buildings', 'stage/Buildings', -275, -250);
    scaleObject('buildings', 1.25, 1.25);



    makeAnimatedLuaSprite('nenekid', 'characters/Uberkid', -415, 330);-- -425, 165
    addAnimationByPrefix('nenekid', 'run', 'UberKidRun', 24, true);
    scaleObject('nenekid', 0.8, 0.8);
    setProperty('nenekid.alpha', 0);

    makeAnimatedLuaSprite('nenekiddies', 'stage/UberKidsDie', -55, 190);
    addAnimationByPrefix('nenekiddies', 'oof', 'UberKidGettingStabbed', 24, false);
    scaleObject('nenekiddies', 0.9, 0.9);
    setProperty('nenekiddies.alpha', 0);

    makeAnimatedLuaSprite('nene', 'stage/nene', 445, 130);
    addAnimationByPrefix('nene', 'bop', 'NeneIdle', 24, false);
    addAnimationByPrefix('nene', 'stab', 'NeneStabbing', 24, false);



    makeAnimatedLuaSprite('darnellkid', 'characters/Uberkid', 1890, 330);-- 1890, 1300
    addAnimationByPrefix('darnellkid', 'run', 'UberKidRun', 24, true);
    scaleObject('darnellkid', -0.8, 0.8);
    setProperty('darnellkid.alpha', 0);

    makeAnimatedLuaSprite('darnellkiddies', 'stage/UberKidsDie', 1230, 310);
    addAnimationByPrefix('darnellkiddies', 'oof', 'UberKidBurnt', 24, false);
    scaleObject('darnellkiddies', 0.8, 0.8);
    setProperty('darnellkiddies.alpha', 0);

    makeAnimatedLuaSprite('darnell', 'stage/darnell', 850, 80);
    addAnimationByPrefix('darnell', 'bop', 'DarnellIdle', 24, false);
    addAnimationByPrefix('darnell', 'burn', 'DarnellBurn', 24, false);

    
    makeAnimatedLuaSprite('daduberkidreturns', 'characters/Uberkid', -575, 360);-- , 125
	addAnimationByPrefix('daduberkidreturns', 'run', 'UberKidRun', 24, true);
    -- scaleObject('daduberkidreturns', 0.9, 0.9);
	setProperty('daduberkidreturns.alpha', 0);

    makeAnimatedLuaSprite('daduberkiddies', 'characters/Uberkid', -510, 275);
	addAnimationByPrefix('daduberkiddies', 'oof', 'UberKidDies', 24, false);
	setProperty('daduberkiddies.alpha', 0);


    makeAnimatedLuaSprite('picobreakdance', 'characters/Pico', 0, 0);
	addAnimationByPrefix('picobreakdance', 'go_off', 'PicoBreakDance', 24, true);
    setProperty('picobreakdance.visible', false);
	setProperty('picobreakdance.alpha', 0);

    makeAnimatedLuaSprite('picobreakdanceshootin', 'characters/Pico', 0, 0);
	addAnimationByPrefix('picobreakdanceshootin', 'go_off', 'PicoBreak2DanceShootin', 24, true);
    setProperty('picobreakdanceshootin.visible', false);
	setProperty('picobreakdanceshootin.alpha', 0);
    

    makeAnimatedLuaSprite('frontboppers', 'stage/frontbounce', -250, 730);
    addAnimationByPrefix('frontboppers', 'bop', 'frontbounce', 24, false);
    setLuaSpriteScrollFactor('frontboppers', 1.35, 1.35);
    
    addLuaSprite('sky', false);
    addLuaSprite('buildings', false);

    addLuaSprite('nenekid', false);
    addLuaSprite('nene', false);
    addLuaSprite('nenekiddies', false);

    addLuaSprite('darnellkid', false);
    addLuaSprite('darnellkiddies', false);
    addLuaSprite('darnell', false);

    addLuaSprite('daduberkidreturns', true);
    addLuaSprite('daduberkiddies', true);

    addLuaSprite('picobreakdance', true);
    addLuaSprite('picobreakdanceshootin', true);

    makeAnimatedLuaSprite('bussin', 'stage/bussin', -3500, -20); -- -3500, -20
    addAnimationByPrefix('bussin', 'busn', 'BusN', 24, true);
    addAnimationByPrefix('bussin', 'nissub', 'Bussin', 24, true);
    setProperty('bussin.alpha', 1);
    addLuaSprite('bussin', true);
    objectPlayAnimation('bussin', 'busn', true);

    makeAnimatedLuaSprite('explosion', 'stage/explosionfrom_edd', 200, -500);
	addAnimationByPrefix('explosion', 'boom', 'TordBotBlowingUp', 18, false);
	setProperty('explosion.angle', -90);
    setProperty('explosion.alpha', 0);
	addLuaSprite('explosion', true);
    scaleObject('explosion', 2, 2);
    
    makeAnimatedLuaSprite('picododge', 'characters/Pico', 1050, 500);
    addAnimationByPrefix('picododge', 'dodge', 'PicoDodging', 24, true);
    setProperty('picododge.alpha', 0);
    addLuaSprite('picododge', true);


    makeAnimatedLuaSprite('dadmic', 'stage/micspin', 300, 625);
    addAnimationByPrefix('dadmic', 'speen', 'mic full forward', 24, true);
    setProperty('dadmic.alpha', 0);
    addLuaSprite('dadmic', true);

    addLuaSprite('frontboppers', true);

    
    makeAnimatedLuaSprite('frontbouncerdie1', 'stage/frontbouncerdie', -600, 395);
    makeAnimatedLuaSprite('frontbouncerdie2', 'stage/frontbouncerdie', 530, 640);
    scaleObject('frontbouncerdie2', -1, 1);
    makeAnimatedLuaSprite('frontbouncerdie3', 'stage/frontbouncerdie', 275, 695);
    makeAnimatedLuaSprite('frontbouncerdie4', 'stage/frontbouncerdie', -115, 610);
    makeAnimatedLuaSprite('frontbouncerdie5', 'stage/frontbouncerdie', 1080, 500);
    scaleObject('frontbouncerdie5', -1, 1);

    for i = 1,5,1 do
        addAnimationByPrefix('frontbouncerdie' .. i, 'die', 'front 1 head die', 24, false);
        addAnimationByIndices('frontbouncerdie' .. i, 'live', 'front 1 head die', '1', 24);
        setLuaSpriteScrollFactor('frontbouncerdie' .. i, 1.35, 1.35);
        setProperty('frontbouncerdie' .. i .. '.alpha', 0);
        addLuaSprite('frontbouncerdie' .. i, true);
        objectPlayAnimation('frontbouncerdie' .. i, 'live', true);
    end

    makeAnimatedLuaSprite('uberjumpin1', 'stage/UberKidCharge', -500, 210); -- left
	addAnimationByPrefix('uberjumpin1', 'charge', 'UberKidChargingUp', 24, false);
	setProperty('uberjumpin1.alpha', 0);
    addLuaSprite('uberjumpin1', true);

    makeAnimatedLuaSprite('uberjumpin2', 'stage/UberKidCharge', 1000, 210); -- right
	addAnimationByPrefix('uberjumpin2', 'charge', 'UberKidChargingUp', 24, false);
	setProperty('uberjumpin2.alpha', 0);
    addLuaSprite('uberjumpin2', true);
    scaleObject('uberjumpin2', -1, 1);

    makeAnimatedLuaSprite('comic', 'stage/comicanim', -570, -480);
	addAnimationByPrefix('comic', 'anim', 'ComicPannel', 24, false);
    scaleObject('comic', 0.64, 0.64); -- NINTENDO 64 WOOOOOOOOOOOOOOOOOO
	setObjectCamera('comic', 'camHUD');
	addLuaSprite('comic', false);
    
end

function onBeatHit()
    objectPlayAnimation('frontboppers', 'bop', true);

    setProperty('picobreakdance.x', getProperty('boyfriend.x') - 190);
    setProperty('picobreakdance.y', getProperty('boyfriend.y') + 30);

    setProperty('picobreakdanceshootin.x', getProperty('boyfriend.x') - 321);
    setProperty('picobreakdanceshootin.y', getProperty('boyfriend.y') - 88);

    if neneAtt == false then
        objectPlayAnimation('nene', 'bop', true);
        setProperty('nene.y', 445);
        setProperty('nene.y', 130);
    end
    if darnellAtt == false then
        objectPlayAnimation('darnell', 'bop', true);
        setProperty('darnell.x', 850);
        setProperty('darnell.y', 80);
    end

    if curBeat % 4 == 0 then
        if math.random(1, 50) <= 20 and getProperty('dad.visible') == true then
            -- debugPrint('guy should run')
            -- debugPrint(getPropertyFromClass('Conductor', 'bpm'))
            triggerEvent('neneattack', 0, 0);
        end
    end
    if curBeat % 6 == 0 then
        if math.random(1, 50) <= 20 and getProperty('dad.visible') == true then
            -- debugPrint('guy should run')
            -- debugPrint(getPropertyFromClass('Conductor', 'bpm'))
            triggerEvent('darnellattack', 0, 0);
        end
    end
end

function onEvent(name)
    if name == 'neneattack' then
        cancelTween('nenekidrun');
        setProperty('nenekid.x', -415);
        setProperty('nenekid.alpha', 1);
        doTweenX('nenekidrun', 'nenekid', 165, (4 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60))) - 0.1, 'linear');
        runTimer('nenestab', (4 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60))) - 0.31, 1);
    end

    if name == 'darnellattack' then
        cancelTween('darnellkidrun');
        setProperty('darnellkid.x', 1890);
        setProperty('darnellkid.alpha', 1);
        doTweenX('darnellkidrun', 'darnellkid', 1300, 4 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'nenekidrun' then
        neneAtt = true;
        setProperty('nenekid.alpha', 0);
        setProperty('nenekiddies.alpha', 1);
        objectPlayAnimation('nenekiddies', 'oof', true);
        playSound('stab', 0.9);
    end

    if tag == 'darnellkidrun' then
        darnellAtt = true;
        setProperty('darnellkid.alpha', 0);
        setProperty('darnellkiddies.alpha', 1);
        objectPlayAnimation('darnellkiddies', 'oof', true);
        playSound('fire', 1);

        setProperty('darnell.x', 850);
        setProperty('darnell.y', 30);
        objectPlayAnimation('darnell', 'burn', true);
        runTimer('darnellbop', 3 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 1)
    end
end

function onTimerCompleted(tag)
    if tag == 'nenestab' then
        neneAtt = true;
        runTimer('nenebop', 2 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 1)
        objectPlayAnimation('nene', 'stab', true);
        setProperty('nene.x', 405);
        setProperty('nene.y', 55);
    end
    if tag == 'nenebop' then
        neneAtt = false;
    end

    if tag == 'darnellbop' then
        darnellAtt = false;
    end
end

function onUpdate()
    if keyJustPressed('space') == true and getProperty('boyfriend.idleSuffix') ~= '' then
        characterPlayAnim('boyfriend', 'hey', false);
        -- triggerEvent('bussin', 0, 0);
    end
end