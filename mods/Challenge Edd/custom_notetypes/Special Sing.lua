function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
	--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Special Sing' then
			setPropertyFromGroup('unspawnNotes', i, 'NoAnimation', true)
		end
	end
	--debugPrint('Script started!')
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	
end-- THANKS KEV
function goodNoteHit(id, direction, noteType, isSustainNote)
	
end-- THANKS KEV
		