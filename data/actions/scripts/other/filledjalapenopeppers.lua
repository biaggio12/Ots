
local peppers = Condition(CONDITION_HASTE)
peppers:setParameter(CONDITION_PARAM_TICKS, 3600000)
peppers:setParameter(CONDITION_PARAM_SKILL_HASTE, 100)
peppers:setFormula(0.7, -56, 0.7, -56)

local config = {[9998] = peppers}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
		local useItem = config[item.itemid]
		player:say("Munch.", TALKTYPE_MONSTER_SAY)
		player:addCondition(useItem)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain Speed for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
	return true
	
end
