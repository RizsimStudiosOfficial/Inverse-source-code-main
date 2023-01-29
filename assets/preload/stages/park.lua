function onCreate()
	-- background shit
	makeLuaSprite('bg', 'f-sides/park/BG', -400, 0);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('BGTrees', 'f-sides/park/trees', -300, 350);
	setScrollFactor('BGTrees', 0.9, 0.9);
	scaleObject('BGTrees', 1.1, 1.1);
	
	makeLuaSprite('ground', 'f-sides/park/ground', -400, 550);
	setScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 1.1, 0.8);
	
	makeLuaSprite('street', 'f-sides/park/street', -650, 700);
	setScrollFactor('street', 0.9, 0.9);
	scaleObject('street', 1.1, 1.1);
	
	makeLuaSprite('frontTree', 'f-sides/park/layongrass', 300, 260);
	setScrollFactor('frontTree', 0.9, 0.9);
	scaleObject('frontTree', 1.1, 1.1);
	
	makeLuaSprite('backupGuy', 'f-sides/park/steven/backup-guy', 1100, 400);
	setScrollFactor('backupGuy', 0.9, 0.9);
	scaleObject('backupGuy', 1.1, 1.1);
	
    makeAnimatedLuaSprite('steven', 'f-sides/park/steven/Steven-he', 200, 400); 
    addAnimationByPrefix('steven', 'idle', 'Failure Man Idle instance 1', 24, true);
	objectPlayAnimation('steven','idle')


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('bg', false);
	addLuaSprite('BGTrees',false);
	addLuaSprite('ground', false);
	addLuaSprite('frontTree', false);
	addLuaSprite('backupGuy', false);
	addLuaSprite('street', false);
	addLuaSprite('steven',false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end