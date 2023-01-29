function onCreate()
    -- cache the hell section in dad battle.
    precacheImage('f-sides/stage/hell/bg')  
	precacheImage('f-sides/stage/hell/spikes')  
	precacheImage('f-sides/stage/hell/hellfloor')  
	precacheImage('f-sides/stage/hell/curtain-holder')  
	precacheImage('f-sides/stage/hell/stagefloor')  

	-- background shit
	makeLuaSprite('bg', 'f-sides/stage/BG', -600, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('clouds', 'f-sides/stage/clouds', -400, -30);
	setLuaSpriteScrollFactor('clouds', 0.9, 0.9);
	scaleObject('clouds', 0.6, 0.6);
	
	makeLuaSprite('house', 'f-sides/stage/tomhouse', 350, -40);
	setLuaSpriteScrollFactor('house', 0.9, 0.9);
	scaleObject('house', 0.9, 0.9);
	
	makeLuaSprite('hills', 'f-sides/stage/hills', -990, 200);
	setLuaSpriteScrollFactor('hills', 0.9, 0.9);
	scaleObject('hills', 0.9, 0.7);
	
	makeLuaSprite('ground', 'f-sides/stage/ground', -790, 490);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 0.9, 0.7);
	
	makeLuaSprite('crowdback', 'f-sides/stage/crowdback', 0, 440);
	setLuaSpriteScrollFactor('crowdback', 0.9, 0.9);
	scaleObject('crowdback', 0.7, 0.7);
	
	
	makeLuaSprite('curtain-holder', 'f-sides/stage/curtainholder', 0, -300);
	setLuaSpriteScrollFactor('curtain-holder', 0.9, 0.9);
	scaleObject('curtain-holder', 1.1, 1.1);
	
	makeLuaSprite('stagefront', 'f-sides/stage/stagefloor', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	
	-- hell sprites
	
	makeLuaSprite('bg-hell', 'f-sides/stage/hell/bg', -950, -700);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	addLuaSprite('bg-hell', false);
	setProperty('bg-hell.visible', false);
	
	makeLuaSprite('spike', 'f-sides/stage/hell/spikes', -600, 300);
	setLuaSpriteScrollFactor('spike', 0.9, 0.9);
	scaleObject('spike', 0.6, 0.6);
	addLuaSprite('spike', false);
	setProperty('spike-hell.visible', false);
	
	makeLuaSprite('ground-hell', 'f-sides/stage/hell/hellfloor', -790, 490);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 0.9, 0.7);
	addLuaSprite('ground-hell', false);
	setProperty('ground-hell.visible', false);
	
	makeLuaSprite('curtain-holder-hell', 'f-sides/stage/hell/curtain-holder', 0, -300);
	setLuaSpriteScrollFactor('curtain-holder-hell', 0.9, 0.9);
	scaleObject('curtain-holder-hell', 1.1, 1.1);
	addLuaSprite('curtain-holder-hell', false);
	setProperty('curtain-holder-hell.visible', false);
	
	makeLuaSprite('stagefront-hell', 'f-sides/stage/hell/stagefloor', -650, 600);
	setLuaSpriteScrollFactor('stagefront-hell', 0.9, 0.9);
	scaleObject('stagefront-hell', 1.1, 1.1);
	addLuaSprite('stagefront-hell', false);
    setProperty('stagefront-hell.visible', false);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

	makeLuaSprite('crowdfrontOld', 'f-sides/stage/crowdfront', -500, 250);
	setLuaSpriteScrollFactor('crowdfrontOld', 0.9, 0.9);
	scaleObject('crowdfrontOld', 0.7, 0.7);
	
	makeAnimatedLuaSprite('crowdfront', 'f-sides/stage/crowdfront_anim', -500, 310); 
    addAnimationByPrefix('crowdfront', 'idle', 'PeopleCrowd Full', 20, true);
	setLuaSpriteScrollFactor('crowdfront', 0.9, 0.9);
	scaleObject('crowdfront', 0.7, 0.7);
	end
	

	addLuaSprite('bg', false);
	addLuaSprite('clouds', false);
	addLuaSprite('house', false);
	addLuaSprite('hills', false);
	addLuaSprite('ground', false);
	addLuaSprite('crowdback', false);
	addLuaSprite('curtain-holder', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('crowdfront', true);
	
--	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onEvent(name,value1,value2)
	if name == 'Switch Dumb Stage' then 
		
		if value1 == '2' then
			setProperty('bg.visible', false);
			setProperty('house.visible', false);
			setProperty('crowdback.visible', false);
			setProperty('clouds.visible', false);
			setProperty('hills.visible', false);
			setProperty('ground.visible', false);
			setProperty('crowdfront.visible', false);
			setProperty('curtain-holder.visible', false);
			setProperty('stagefront.visible', false);
			setProperty('bg-hell.visible', true);
			setProperty('curtain-holder-hell.visible', true);
			setProperty('ground-hell.visible', true);
			setProperty('spike.visible', true);
			setProperty('stagefront-hell.visible', true);
		
		end

		if value1 == '1' then
			setProperty('bg.visible', true);
			setProperty('house.visible', true);
			setProperty('crowdback.visible', true);
			setProperty('clouds.visible', true);
			setProperty('hills.visible', true);
			setProperty('ground.visible', true);
			setProperty('crowdfront.visible', true);
			setProperty('curtain-holder.visible', true);
			setProperty('stagefront.visible', true);
			setProperty('bg-hell.visible', false);
			setProperty('curtain-holder-hell.visible', false);
			setProperty('ground-hell.visible', false);
			setProperty('spike.visible', false);
			setProperty('stagefront-hell.visible', false);
		end
	end
	
	function onBeatHit()
	objectPlayAnimation('crowdfront','idle')
   end
end