delay  = 200011

local conditions =
{
   CONDITION_POISON, CONDITION_FIRE, CONDITION_ENERGY,
   CONDITION_PARALYZE, CONDITION_DRUNK, CONDITION_DROWN,
   CONDITION_FREEZING, CONDITION_DAZZLED, CONDITION_CURSED,
   CONDITION_BLEEDING
}

local roastedDragonWings = Condition(CONDITION_ATTRIBUTES)
roastedDragonWings:setParameter(CONDITION_PARAM_TICKS, 3600000)
roastedDragonWings:setParameter(CONDITION_PARAM_SKILL_SHIELD, 10)

local friedTropicalTerrorbird = Condition(CONDITION_ATTRIBUTES)
friedTropicalTerrorbird:setParameter(CONDITION_PARAM_TICKS, 3600000)
friedTropicalTerrorbird:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 5)

local veggieCasserole = Condition(CONDITION_ATTRIBUTES)
veggieCasserole:setParameter(CONDITION_PARAM_TICKS, 3600000)
veggieCasserole:setParameter(CONDITION_PARAM_SKILL_SWORD, 10)
veggieCasserole:setParameter(CONDITION_PARAM_SKILL_AXE, 10)
veggieCasserole:setParameter(CONDITION_PARAM_SKILL_CLUB,10)

local peppers = Condition(CONDITION_HASTE)
peppers:setParameter(CONDITION_PARAM_TICKS, 3600000)
peppers:setParameter(CONDITION_PARAM_STAT_SPEED, 100)
peppers:setFormula(0.7, -56, 0.7, -56)

local carrotCake = Condition(CONDITION_ATTRIBUTES)
carrotCake:setParameter(CONDITION_PARAM_TICKS, 3600000)
carrotCake:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 10)

local burger = Condition(CONDITION_ATTRIBUTES)
burger:setParameter(CONDITION_PARAM_TICKS, 3600000)
burger:setParameter(CONDITION_PARAM_SKILL_FISHING, 50)

local potOfBlackjackCharges = 3

local demonicCandyBallsMelee = Condition(CONDITION_ATTRIBUTES)
demonicCandyBallsMelee:setParameter(CONDITION_PARAM_TICKS, 3600000)
demonicCandyBallsMelee:setParameter(CONDITION_PARAM_SKILL_SWORD, 3)
demonicCandyBallsMelee:setParameter(CONDITION_PARAM_SKILL_AXE, 3)
demonicCandyBallsMelee:setParameter(CONDITION_PARAM_SKILL_CLUB,3)

local demonicCandyBallsDistance = Condition(CONDITION_ATTRIBUTES)
demonicCandyBallsDistance:setParameter(CONDITION_PARAM_TICKS, 3600000)
demonicCandyBallsDistance:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 6)

local demonicCandyBallsLight = Condition(CONDITION_LIGHT)
demonicCandyBallsLight:setParameter(CONDITION_PARAM_LIGHT_LEVEL, 12)
demonicCandyBallsLight:setParameter(CONDITION_PARAM_LIGHT_COLOR, 215)
demonicCandyBallsLight:setParameter(CONDITION_PARAM_TICKS, (60 * 33 + 10) * 1000)

local demonicCandyBallsShield = Condition(CONDITION_ATTRIBUTES)
demonicCandyBallsShield:setParameter(CONDITION_PARAM_TICKS, 3600000)
demonicCandyBallsShield:setParameter(CONDITION_PARAM_SKILL_SHIELD, 6)

local demonicCandyBallsMagicLevel = Condition(CONDITION_ATTRIBUTES)
demonicCandyBallsMagicLevel:setParameter(CONDITION_PARAM_TICKS, 3600000)
demonicCandyBallsMagicLevel:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 3)

local demonicCandyBallsSpeed = Condition(CONDITION_HASTE)
demonicCandyBallsSpeed:setParameter(CONDITION_PARAM_TICKS, 3600000)
demonicCandyBallsSpeed:setParameter(CONDITION_PARAM_STAT_SPEED, 100)
demonicCandyBallsSpeed:setFormula(0.7, -56, 0.7, -56)

local demonicCandyBallsInvisible = Condition(CONDITION_INVISIBLE)
demonicCandyBallsInvisible:setParameter(CONDITION_PARAM_TICKS, 200000)

local ringsToDuplicate =
{
[2211] = 2208 -- 2211 -> Equipment // 2208 - Not Equipement



}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)

config =
 {
[9992] = 0, -- Rotworm Stew
[9993] = 1, -- Hydra Salad Tongue
[9994] = 2, -- Roasted Chicken Wings
[9995] = 3, -- Fried Tropical Terrorbird
[9997] = 4, -- Veggie Casserole
[9998] = 5, -- Filled Jalapeńo Peppers
[9999] = 6, -- Blessed Steak
[10000] = 7, -- Carrot Cake
[12540] = 8, -- Coconut Shrimp Bake
[12542] = 9, -- Pot of Blackjack
[12543] = 10 -- Demonic Candy Balls
 }


        if player:getStorageValue(delay) >= os.time() then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are full.")
	

       	elseif  item.itemid == 9992 then
                player:addHealth(math.max(1,player:getMaxHealth() - player:getHealth()))
                player:say("Gulp", TALKTYPE_MONSTER_SAY)
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your health was refilled completely.")
                player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
                item:remove(1)

        elseif item.itemid == 9993 then
		for i = 1, #conditions do
		player:removeCondition(conditions[i])
		end
		player:say("Crunch.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You successfully removed all conditions!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)

	elseif item.itemid == 9994 then
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:addCondition(roastedDragonWings)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your gain +10 Shielding for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)
	
	elseif item.itemid == 9995 then
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:addCondition(friedTropicalTerrorbird)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +5 Magic Level for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)

	elseif item.itemid == 9997 then
		player:say("Mmmm.", TALKTYPE_MONSTER_SAY)
		player:addCondition(veggieCasserole)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +10 Axe, +10 Sword, +10 Club for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)	

	elseif item.itemid == 9998 then
		player:say("Munch.", TALKTYPE_MONSTER_SAY)
		player:addCondition(peppers)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain Speed for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)
	
	elseif item.itemid == 9999 then
		player:addMana(math.max(1,player:getMaxMana() - player:getMana()))
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your mana was refilled completely.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)
		
	elseif item.itemid == 10000 then
		player:say("Mmmm.", TALKTYPE_MONSTER_SAY)
		player:addCondition(carrotCake)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +10 Distance for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)

	elseif item.itemid == 10001 then
		player:say("Smack.", TALKTYPE_MONSTER_SAY)
		player:addCondition(burger)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +50 Fishing for 60 minutes!")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:setStorageValue(delay, os.time() + 10)
		item:remove(1)
	
	elseif item.itemid == 12540 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE,"Nie dziala kurwa xD")

	elseif item.itemid == 12542 then
		if potOfBlackjackCharges >= 1 then
			potOfBlackjackCharges = potOfBlackjackCharges - 1		
			player:addHealth(math.max(1,player:getMaxHealth() - player:getHealth()))
			player:say("Gulp", TALKTYPE_MONSTER_SAY)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your health was refilled completely. Charges: " .. potOfBlackjackCharges .. "/3.")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			player:setStorageValue(delay, os.time() + 10)
		elseif potOfBlackjackCharges == 0 then
			item:remove(1)
			potOfBlackjackCharges = 3 
		end

	elseif item.itemid == 12543 then
		randomNumber = math.random(1,7)
		if randomNumber == 1 then
	                player:addCondition(demonicCandyBallsMelee)
        	        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +3 Axe, +3 Sword, +3 Club for 60 minutes!")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		 	player:setStorageValue(delay, os.time() + 10)
			item:remove(1)

		elseif randomNumber == 2 then
			player:addCondition(demonicCandyBallsDistance)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +6 Distance for 60 minutes!")
                        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
                        player:setStorageValue(delay, os.time() + 10)
                        item:remove(1)

		elseif randomNumber == 3 then
			player:addCondition(demonicCandyBallsLight)   
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You were enlightened!")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			player:setStorageValue(delay, os.time() + 10)
			item:remove(1)

		elseif randomNumber == 4 then
			player:addCondition(demonicCandyBallsShield)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +6 Shield for 60 minutes!")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			player:setStorageValue(delay, os.time() + 10)
			item:remove(1)

		elseif randomNumber == 5 then
			player:addCondition(demonicCandyBallsMagicLevel)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain +3 Magic Level for 60 minutes!")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			player:setStorageValue(delay, os.time() + 10)
			item:remove(1)

		elseif randomNumber == 6 then
			player:addCondition(demonicCandyBallsSpeed)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain Speed for 60 minutes!")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			player:setStorageValue(delay, os.time() + 10)
			item:remove(1)

		elseif randomNumber == 7 then
			player:addCondition(demonicCandyBallsInvisible)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE,"You are invisible")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			player:setStorageValue(delay,os.time() + 10)
			item:remove(1)
		end

	elseif item.itemid == 12544 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE,"Nie dziala kurwa xD")

	end

        return true
end

