function onEvent(name, value1, value2)

    if name == 'camflash' then
		cameraFlash('camGame', 'ffffff', 0.15, true);
		setProperty('picobreakdanceshootin.alpha', 1);
		runTimer('picostopshootin2', 0.2, 1);
	end
end

function onTimerCompleted(tag)
	if tag == 'picostopshootin2' then
		setProperty('picobreakdanceshootin.alpha', 0);
	end
end
