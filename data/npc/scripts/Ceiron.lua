 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if isInArray({"addon", "outfit"}, msg) then
		if player:getStorageValue(Storage.OutfitQuest.DruidHatAddon) < 1 then
			npcHandler:say("1wszy tekst marleny", cid)
			npcHandler.topic[cid] = 1
		end
	elseif msgcontains(msg, "dust") or msgcontains(msg, "demon dust") then
		if player:getStorageValue(Storage.OutfitQuest.DruidHatAddon) == 2 then
			npcHandler:say("Were you really able to collect 100 ounces of demon dust?", cid)
			npcHandler.topic[cid] = 2
		end
	elseif msgcontains(msg, "chain") or msgcontains(msg, "wolf tooth chain") then
		if player:getStorageValue(Storage.OutfitQuest.DruidHatAddon) == 3 then
			npcHandler:say("Have you really found my wolf tooth chain??", cid)
			npcHandler.topic[cid] = 3
		end
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 1 then
			npcHandler:say({ "2gi text marleny gitara czekam na itemki "}, cid)
			player:setStorageValue(Storage.OutfitQuest.DruidHatAddon, 2)
			npcHandler.topic[cid] = 0
	elseif npcHandler.topic[cid] == 2 then
		if player:removeItem(5906, 100) then
			npcHandler:say("I'm very impressed, |PLAYERNAME|. With this task you have proven that you are on the right side and are powerful as well. Did you retrieve my necklace ?", cid)
			player:setStorageValue(Storage.OutfitQuest.DruidHatAddon, 3)
			npcHandler.topic[cid] = 3
		end
		elseif npcHandler.topic[cid] == 3 then
			if player:removeItem(5940, 1) then
				npcHandler:say("Crunor be praised! You found my beloved chain! |PLAYERNAME|, you really earned my respect and I consider you as a friend from now on. Remind me to tell you about {Faolan} sometime.", cid)
				player:setStorageValue(Storage.OutfitQuest.DruidHatAddon, 4)
				npcHandler.topic[cid] = 0
			end
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Always nice to meet a fellow druid, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_FAREWELL, "May Crunor bless and guide you, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "May Crunor bless and guide you, |PLAYERNAME|.")
npcHandler:addModule(FocusModule:new())

