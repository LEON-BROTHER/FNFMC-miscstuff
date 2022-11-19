function onEvent(name, value1, value2)

    if name == 'jumpinfront' then
		if value1 ~= '3' then
			objectPlayAnimation('uberjumpin' .. value1, 'charge', true);
			setProperty('uberjumpin' .. value1 .. '.alpha', 1);
			characterPlayAnim('boyfriend', 'shoot' .. value1, true);
		else
			objectPlayAnimation('uberjumpin1', 'charge', true);
			objectPlayAnimation('uberjumpin2', 'charge', true);
			characterPlayAnim('boyfriend', 'shoot1', true);
		end
	end
end
