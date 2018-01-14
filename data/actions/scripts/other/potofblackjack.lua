local charge = 3

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if charge >= 1 then
			charge = charge - 1		
			player:addHealth(math.max(1,player:getMaxHealth() - player:getHealth()))
			player:say("Gulp", TALKTYPE_MONSTER_SAY)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your health was refilled completely. Charges: " .. charge .. "/3.")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		if charge == 0 then
			item:remove(1)
			charge = 3 
		end
		
	end
	return true
end

