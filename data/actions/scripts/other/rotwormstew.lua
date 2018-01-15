
time = os.time()
exhausted = time + (60 * 60)
difference = exhausted - time
function onUse(player, item, fromPosition, target, toPosition, isHotkey)

player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Difference is ".. difference)
player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Time is "..time)
player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Exhausted is ".. exhausted)
	
        if difference > 0  then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are full.")
		difference = 0
	elseif difference ==  0 then 
		player:addHealth(math.max(1,player:getMaxHealth() - player:getHealth()))
		player:say("Gulp", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your health was refilled completely.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
		difference = exhausted - time
	end
	return true
end





