
local defaultNotePos = {};
local arrowMoveX = 0;
local arrowMoveY = 10;
local lengthStuff = 0.3
local angleStuff = 360
local runs = 1
 
function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
        
        table.add(defaultNotePos, {x,y})
    end
end

function onUpdate(elapsed)
 
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 1000) * (bpm / 60)
 
   
        for i = 0,7 do 
            
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*0.25) * math.pi))
            
        end
       

end

function onStepHit()
    if curStep == 120 or curStep == 248 or curStep == 375 or curStep == 632 or curStep == 696 or curStep == 824 or curStep == 952 or curStep == 1208 then
        for i = 0,7 do 
        noteTweenAngle(i, i, angleStuff*runs,lengthStuff)
        end
        runs = runs + 1
    end
end





