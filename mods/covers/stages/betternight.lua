function onCreate()
	makeLuaSprite('stageback', 'thawal-night', -870, -360);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);

	makeLuaSprite('stagefront', 'thagroun-night', -600, -350);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);

	setProperty("gf.y", 2000);
end
