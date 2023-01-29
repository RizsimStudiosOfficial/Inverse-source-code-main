function onCreate()
	-- background shit
	makeLuaSprite('skybox', 'f-sides/pirate-ship/sky', -600, -300);
	setScrollFactor('skybox', 0.9, 0.9);
	
	makeLuaSprite('floor', 'f-sides/pirate-ship/floor', -500, 300.8);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 1.5, 1.2);
	
	makeLuaSprite('stoolFront', 'f-sides/pirate-ship/stoolFront', 454, 50);
	setScrollFactor('StoolFront', 0.9, 0.9);
	scaleObject('stoolFront', 1.1, 1.1);
	
	makeLuaSprite('ladder', 'f-sides/pirate-ship/ladder', 650, 50);
	setScrollFactor('ladder', 0.9, 0.9);
	scaleObject('ladder', 1.1, 1.1);

	makeLuaSprite('platform', 'f-sides/pirate-ship/platform', 454, 10);
	setScrollFactor('platform', 0.9, 0.9);
	scaleObject('platform', 1.1, 1.1);
	
	makeLuaSprite('stool', 'f-sides/pirate-ship/stool', 593, -556);
--	setScrollFactor('stool', 0.9, 0.9);
	scaleObject('stool', 1.3, 1.3);
	
	makeLuaSprite('wator', 'f-sides/pirate-ship/water', -600, 300);
	setScrollFactor('wator', 0.9, 0.9);
	scaleObject('wator', 1.1, 1.1);
	
	makeLuaSprite('cloud1', 'f-sides/pirate-ship/cloud1', -600, -300);
	setScrollFactor('cloud1', 0.9, 0.9);
	scaleObject('cloud1', 1.1, 1.1);
	
	makeLuaSprite('cloud2', 'f-sides/pirate-ship/cloud2', 600, -280);
	setScrollFactor('cloud2', 0.9, 0.9);
	scaleObject('cloud2', 1.1, 1.1);
	
	makeLuaSprite('cloud3', 'f-sides/pirate-ship/cloud3', -570, -10);
	setScrollFactor('cloud3', 0.9, 0.9);
	scaleObject('cloud3', 0.8, 0.8);
	
	makeLuaSprite('cloud4', 'f-sides/pirate-ship/cloud4', 800, -10);
	setScrollFactor('cloud4', 0.9, 0.9);
	scaleObject('cloud4', 0.8, 0.8);
	
	makeLuaSprite('boat_overlay', 'f-sides/pirate-ship/boat', -450, 500);
	setScrollFactor('boat_overlay', 0.9, 0.9);
	scaleObject('boat_overlay', 1.1, 1.1);
	
	makeLuaSprite('stagefront', 'f-sides/pirate-ship/floor', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('skybox', false);
	addLuaSprite('wator', false);
	addLuaSprite('ladder', false);
	addLuaSprite('floor', false);
	addLuaSprite('stoolFront', false);
	addLuaSprite('platform', false);
	addLuaSprite('stool', false);
	addLuaSprite('cloud1', false);
	addLuaSprite('cloud2', false);
	addLuaSprite('cloud3', false);
	addLuaSprite('cloud4', false);
	addLuaSprite('boat_overlay', true);


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end