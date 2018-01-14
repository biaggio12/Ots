function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:addHealth(math.max(1,player:getMaxHealth() - player:getHealth()))
	player:say("Gulp", TALKTYPE_MONSTER_SAY)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your health was refilled completely.")
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
	item:remove(1)
	return true
end
