


--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
--[[message
	To test the fusion materials handling and Edo's changes to the procedures
]]

--Extra Deck
Debug.AddCard(100259001,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(17194258,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Extra Deck
Debug.AddCard(100259001,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(100259001,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(CARD_REDEYES_B_DRAGON,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46986414,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Debug.AddCard(74677422,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2732323,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2732323,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(75878039,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89882100,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Debug.AddCard(6172122,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
--Debug.AddCard(100259001,0,0,LOCATION_MZONE,0,1,true)
Debug.AddCard(2732323,0,0,LOCATION_MZONE,4,1,true)
Debug.AddCard(75878039,0,0,LOCATION_MZONE,1,1,true)
--Spell & Trap Zones
Debug.AddCard(53582587,0,0,LOCATION_SZONE,1,10)
--Monster Zones
--Debug.AddCard(100257071,0,0,LOCATION_MZONE,6,1,true)
Debug.AddCard(9794980,1,1,LOCATION_MZONE,3,4,true)
Debug.AddCard(55885348,1,1,LOCATION_MZONE,1,4,true)
Debug.AddCard(75878039,1,1,LOCATION_MZONE,2,4,true)
Debug.AddCard(75878039,1,1,LOCATION_MZONE,0,4,true)
Debug.AddCard(75878039,1,1,LOCATION_MZONE,4,4,true)
Debug.AddCard(6172122,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(24094653,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(46986414,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1799464,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(6172122,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2732323,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(74677422,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Spell & Trap Zones
Debug.AddCard(53582587,1,1,LOCATION_SZONE,2,10)
Debug.ReloadFieldEnd()
