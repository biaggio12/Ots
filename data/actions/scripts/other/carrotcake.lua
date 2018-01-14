
local carrotCake = Condition(CONDITION_ATTRIBUTES)
carrotCake:setParameter(CONDITION_PARAM_TICKS, 3600000)
carrotCake:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 10)

local config = {[10000] = carrotCake}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
		local useItem = config[item.itemid]
		player:say("Mmmm.", TALKTYPE_MONSTER_SAY)
		player:addCondition(useItem)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your gain +10 Distance for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
	return true
	
end
