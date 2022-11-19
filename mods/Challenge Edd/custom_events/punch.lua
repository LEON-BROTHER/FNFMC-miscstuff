function onCreate()
	makeAnimatedLuaSprite('finalpunch', 'stage/finalpunch', 130, 180);
	addAnimationByPrefix('finalpunch', 'epic', 'EpicFinalPunch', 24, false);
	precacheImage('stage/finalpunch');
end

function onEvent(name, value1, value2)
    if name == 'punch' then
		setProperty('dad.visible', false);
		setProperty('boyfriend.visible', false);
		addLuaSprite('finalpunch', true);
	end
end
