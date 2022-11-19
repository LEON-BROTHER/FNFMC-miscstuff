function onCreate()
	-- background shit
	makeLuaSprite('hotel_sky', 'Hotel_skybox', -1000, -750);
	setScrollFactor('hotel_sky', 0, 0);
	scaleObject('hotel_sky', 1.3, 1.3);

	makeLuaSprite('hotel_clouds', 'Hotel_clouds', -1500, -2300);
	setScrollFactor('hotel_clouds', 0.3, 0.3);
	scaleObject('hotel_clouds', 2, 2);
	
	makeLuaSprite('hotel_mountains', 'Hotel_mountains', -1050, -1500);
	setScrollFactor('hotel_mountains', 0.4, 0.4);
	scaleObject('hotel_mountains', 1.5, 1.5);

	makeLuaSprite('hotel_hills', 'Hotel_hills', -1500, -2300);
	setScrollFactor('hotel_hills', 0.5, 0.5);
	scaleObject('hotel_hills', 2, 2);

	makeLuaSprite('hotel_ground', 'Hotel_ground', -1500, -2300);
	setScrollFactor('hotel_ground', 0.8, 0.8);
	scaleObject('hotel_ground', 2, 2);

	makeAnimatedLuaSprite('ssbrass', 'ssbrass', -2000, -700);
	addAnimationByPrefix('ssbrass', 'idle', 'ssbrass idle', 12, false);
	scaleObject('ssbrass', 0.5, 0.5);
	setScrollFactor('ssbrass', 0.4, 0.4);
	objectPlayAnimation('ssbrass', 'idle');	


	addLuaSprite('hotel_sky', false);
	addLuaSprite('hotel_clouds', false);
	addLuaSprite('hotel_mountains', false);
	addLuaSprite('hotel_hills', false);
	addLuaSprite('ssbrass', false);
	addLuaSprite('hotel_ground', false);

	function onBeatHit()
		-- triggered 4 times per section
		if curBeat % 1 == 0 then
			objectPlayAnimation('ssbrass', 'idle');
		end
	end

	function onUpdate()
		setProperty('ssbrass.x', getProperty ('ssbrass.x') + 0.8);
	end


end