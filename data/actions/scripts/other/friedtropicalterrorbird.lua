
local friedTropicalTerrorbird = Condition(CONDITION_ATTRIBUTES)
friedTropicalTerrorbird:setParameter(CONDITION_PARAM_TICKS, 3600000)
friedTropicalTerrorbird:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 5)

local config = {[9995] = friedTropicalTerrorbird}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
		local useItem = config[item.itemid]
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:addCondition(useItem)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +5 Magic Level for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
	return true
	
end

