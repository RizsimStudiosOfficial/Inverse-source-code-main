function onStepHit()
if getProperty('dad.animation.curAnim.finished') and getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
	triggerEvent('Change Character', '1', 'tankman')
	end
end