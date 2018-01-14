
local config = {[9993] = hydraSaladTongue}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
   	player:removeCondition(CONDITION_FIRE)
	player:removeCondition(CONDITION_POISON)
	player:removeCondition(CONDITION_ENERGY)
	player:removeCondition(CONDITION_DRUNK)
	player:removeCondition(CONDITION_BLEEDING)
	player:removeCondition(CONDITION_CURSED)
	player:removeCondition(CONDITION_PARALYZE)
	player:removeCondition(CONDITION_DROWN)
	player:removeCondition(CONDITION_FREEZING)
        player:say("Crunch.", TALKTYPE_MONSTER_SAY)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You successfully removed all conditions!")
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
        item:remove(1)
    return true
   
end
