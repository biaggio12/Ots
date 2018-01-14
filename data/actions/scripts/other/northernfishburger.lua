local burger = Condition(CONDITION_ATTRIBUTES)
burger:setParameter(CONDITION_PARAM_TICKS, 3600000)
burger:setParameter(CONDITION_PARAM_SKILL_FISHING, 50)

local config = {[10001] = burger}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
		local useItem = config[item.itemid]
		player:say("Smack.", TALKTYPE_MONSTER_SAY)
		player:addCondition(useItem)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +50 Fishing for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
	return true
	
end
