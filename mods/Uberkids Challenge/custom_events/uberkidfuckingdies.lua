function onEvent(name, value1, value2)

    if name == "uberkidfuckingdies" then
		cancelTimer('pull');
		cancelTween('uberdadpull');
		setProperty('dad.alpha', 0);
		setProperty('daduberkiddies.x', -510);
		setProperty('daduberkiddies.alpha', 1);

		if value2 ~= 'true' then
			characterPlayAnim('boyfriend', 'shoot', true);
			cameraShake('camGame', 0.015, 0.15);
		end

		setProperty('dadmic.alpha', 1);
		setProperty('dadmic.y', 625);
		objectPlayAnimation('daduberkiddies', 'oof', true);
		runTimer('pull', 1, 4);
		if value1 == 'true' then
			doTweenY('micup', 'dadmic', 100, 2 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 'cubeOut');
			runTimer('wait', 2 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 1);
			if value2 == 'true' then
				triggerEvent('theyaredeadmancalmdown', 0, 0);
				setProperty('dadmic.alpha', 0);
				setProperty('daduberkiddies.alpha', 0);
				for i = 1,5,1 do
					removeLuaSprite('frontbouncerdie' .. i, true);
					removeLuaSprite('uberjumpin' .. i, true);
				end
			end
		else
			doTweenY('micbye', 'dadmic', -100, 2 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 'quadOut');
		end
	end
end

function onTimerCompleted(tag)
	if tag == 'wait' then
		setProperty('daduberkidreturns.x', -575);
		setProperty('daduberkidreturns.alpha', 1);
		doTweenX('uberdadrun', 'daduberkidreturns', 125, 2 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 'linear');
	end

	if tag == 'pull' then
		doTweenX('uberdadpull', 'daduberkiddies', getProperty('daduberkiddies.x') - 175, 0.75, 'cubeOut');
	end
end

function onTweenCompleted(tag)
	if tag == 'uberdadrun' then
		setProperty('daduberkidreturns.alpha', 0);
		setProperty('dad.alpha', 1);
	end
	if tag == 'micup' then
		doTweenY('micdown', 'dadmic', 625, 2 * (1 / (getPropertyFromClass('Conductor', 'bpm') / 60)), 'cubeIn');
	end
	if tag == 'micdown' or tag == 'micbye' then
		setProperty('dadmic.alpha', 0);
	end
end
		