local what = 0;

function onEvent(name, value1, value2)

    if name == 'frontbouncerdie' then
		what = 0;
		what = what + value1
		if what == 0 then
			removeLuaSprite('frontboppers', true);
			for i = 1,5,1 do
				setProperty('frontbouncerdie' .. i .. '.alpha', 1);
			end
		else
			setProperty('picobreakdanceshootin.alpha', 1);
			objectPlayAnimation('frontbouncerdie' .. what, 'die', true);
			runTimer('picostopshootin', 0.2, 1);
			triggerEvent('camflash', 0, 0);
		end
	end
end

function onTimerCompleted(tag)
	if tag == 'picostopshootin' then
		setProperty('picobreakdanceshootin.alpha', 0);
	end
end
