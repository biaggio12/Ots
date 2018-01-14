
local veggieCaserolle = Condition(CONDITION_ATTRIBUTES)
veggieCaserolle:setParameter(CONDITION_PARAM_TICKS, 3600000)
veggieCaserolle:setParameter(CONDITION_PARAM_SKILL_SWORD, 10)
veggieCaserolle:setParameter(CONDITION_PARAM_SKILL_AXE, 10)
veggieCaserolle:setParameter(CONDITION_PARAM_SKILL_CLUB,10)

local config = {[9997] = veggieCaserolle}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
		local useItem = config[item.itemid]
		player:say("Mmmm.", TALKTYPE_MONSTER_SAY)
		player:addCondition(useItem)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your gain +10 Axe, +10 Sword, +10 Club for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
	return true
	
end
