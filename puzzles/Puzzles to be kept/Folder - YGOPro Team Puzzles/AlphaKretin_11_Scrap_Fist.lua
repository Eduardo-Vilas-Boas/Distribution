--[[message
Ride the Road to Tomorrow as you relive an exaggeration of 5Ds' iconic finisher!


	Your Starting LP: 16000
	Opponent's Starting LP: 12000
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)

Debug.SetPlayerInfo(0,16000,0,0)
Debug.SetPlayerInfo(1,12000,0,0)

--AI's hand.

--AI's field.
local c=Debug.AddCard(97489701,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
local e1=Debug.AddCard(22046459,1,1,LOCATION_SZONE,0,POS_FACEUP)
local e2=Debug.AddCard(83746708,1,1,LOCATION_SZONE,1,POS_FACEUP)
local e3=Debug.AddCard(56747793,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(30834988,1,1,LOCATION_SZONE,3,POS_FACEUP)
local e4=Debug.AddCard(75539614,1,1,LOCATION_SZONE,4,POS_FACEUP)
e4:RegisterFlagEffect(75539614,RESET_EVENT+0x1fe0000,0,1,2000)
Debug.AddCard(48179391,1,1,LOCATION_SZONE,5,POS_FACEUP)
Debug.PreEquip(e1,c)
Debug.PreEquip(e2,c)
Debug.PreEquip(e3,c)
Debug.PreEquip(e4,c)
--AI's Extra Deck

--AI’s GY
Debug.AddCard(97489701,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(97489701,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(40975574,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(66141736,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(5780210,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(77360173,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(70902743,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--AI's deck

--Player's Hand
Debug.AddCard(63977008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(36736723,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12247206,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(8529136,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(81439174,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Player's Field

--Player's Main Deck
Debug.AddCard(51196174,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(51196174,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(17932494,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Player's GY
Debug.AddCard(23571046,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(51196174,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Player's Extra Deck
Debug.AddCard(60800381,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in one turn!")
--Below makes it a one turn puzzle.
aux.BeginPuzzle()

--LOCATION_DECK
--LOCATION_SZONE
--LOCATION_GRAVE
--LOCATION_HAND
--LOCATION_MZONE
--LOCATION_EXTRA
--LOCATION_REMOVED
--POS_FACEDOWN
--POS_FACEDOWN_DEFENSE
--POS_FACEUP
--POS_FACEUP_DEFENSE
--POS_FACEUP_ATTACK
--Debug.PreEquip(e1,c1)
--Debug.PreSummon(c,type)h
--Debug.AddCard()
--aux.BeginPuzzle()