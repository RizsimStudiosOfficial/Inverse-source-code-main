function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-mark-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onEvent(n, v1, v2)
   if getProperty('boyfriend.curCharacter') == 'bf-mark' and getProperty('boyfriend.animation.curAnim.name') == 'pre-hey' and getProperty('boyfriend.animation.curAnim.finished') then
		triggerEvent('Play Animation', 'hey', 'Boyfriend')
		triggerEvent('Play Animation', 'cheer', 'gf')
	end
end