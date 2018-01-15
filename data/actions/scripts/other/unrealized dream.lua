function onUse(cid, item, frompos, item2, topos)

presente = math.random(1,40)
pos = getPlayerPosition(cid)
if (pos.x > 33615 and pos.x  < 33647) then
	if (pos.y > 32364 and pos.y < 32379) then
		if presente == 1 or presente == 24  then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,13537,1) -- Bag of Apple Slices
			doRemoveItem(item.uid,1)

		elseif presente == 2 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,22609,1) -- Dream Warden Claw
			doRemoveItem(item.uid,1)

		elseif presente == 3 or presente == 25 then	
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2355,1) -- Stuffed Bunny
			doRemoveItem(item.uid,1)

		elseif presente == 4 or presente == 33  then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,5929,1) -- Goldfish Bowl
			doRemoveItem(item.uid,1)

		elseif presente == 5 or presente == 26 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,5792,1) -- Dice
			doRemoveItem(item.uid,1)

		elseif presente == 7 or presente == 34 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2666,1) -- Meat
			doRemoveItem(item.uid,1)

		elseif presente == 8 or presente == 35 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2121,1) -- Wedding Ring
			doRemoveItem(item.uid,1)

		elseif presente == 9 or presente == 27 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2560,1) -- Mirror
			doRemoveItem(item.uid,1)

		elseif presente == 10  or presente == 36 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,7459,1) -- Pair of Earmuffs
			doRemoveItem(item.uid,1)

		elseif presente == 11 or presente == 28 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2111,1) -- Snowball
			doRemoveItem(item.uid,1)

		elseif presente == 12 or presente == 37 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2223,1) -- Rubbish
			doRemoveItem(item.uid,1)

		elseif presente == 13 or presente == 38 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2114,1) -- Piggy Bank
			doRemoveItem(item.uid,1)

		elseif presente == 14 or presente == 29 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2657,1) -- Simple Dress
			doRemoveItem(item.uid,1)

		elseif presente == 15 or presente == 40 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,1990,1) -- Present
			doRemoveItem(item.uid,1)

		elseif presente == 16 or presente == 30 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2745,1) -- Blue Rose
			doRemoveItem(item.uid,1)

		elseif presente == 17 or presente == 31 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,2072,1) -- Lute
			doRemoveItem(item.uid,1)

		elseif presente == 18 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,22606,1) -- Bronze Prison Key
			doRemoveItem(item.uid,1)

		elseif presente == 19 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,22604,1) -- Silver Prison Key
			doRemoveItem(item.uid,1)

		elseif presente == 20 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,22607,1) -- Golden Prison Key
			doRemoveItem(item.uid,1)

		elseif presente == 21 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,22396,1) -- Cluster of Solace
			doRemoveItem(item.uid,1)

		elseif presente == 22 or presente == 32 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,7735,1) -- Spellwand
			doRemoveItem(item.uid,1)

		elseif presente == 23 then
			doSendMagicEffect(pos,26)
			doPlayerAddItem(cid,22605,1) -- Copper Prison Key
			doRemoveItem(item.uid,1)
		end
	end

end
	return true
end
