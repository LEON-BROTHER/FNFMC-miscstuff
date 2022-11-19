function onEvent(name, value1, value2)
    if name == 'explosion' then
		-- debugPrint('who the fuck');
		setProperty('explosion.alpha', 1);
		objectPlayAnimation('explosion', 'boom', true);
		cameraShake('camGame', 0.02, 0.5);
	end
end
