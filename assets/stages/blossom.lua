function onCreate()
	-- background shit
	
	
	makeLuaSprite('stagefront', 'blossom/3', -550, -450);
	setScrollFactor('stagefront', 0.9, 0.9);
	
	makeLuaSprite('stageback', 'blossom/2', -550, -450);
	setScrollFactor('stageback', 0.9, 0.9);
	

	makeLuaSprite('stagecurtains', 'blossom/1', -550, -450);
	setScrollFactor('stagecurtains', 0.9, 0.9);
	scaleObject('stagecurtains', 1, 1.1);


	addLuaSprite('stagefront', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); 
end