
local roastedDragonWings = Condition(CONDITION_ATTRIBUTES)
roastedDragonWings:setParameter(CONDITION_PARAM_TICKS, 3600000)
roastedDragonWings:setParameter(CONDITION_PARAM_SKILL_SHIELD, 10)

local config = {[9994] = roastedDragonWings}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
		local useItem = config[item.itemid]
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:addCondition(useItem)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your gain +10 Shielding for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
	return true
	
end
