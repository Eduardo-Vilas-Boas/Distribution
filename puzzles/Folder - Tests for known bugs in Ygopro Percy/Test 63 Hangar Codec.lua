--Created using senpaizuri's Puzzle Maker (updated by Naim)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(3405259,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--GY
Debug.AddCard(30012506,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(77411244,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Spell & Trap Zones
Debug.AddCard(66399653,0,0,LOCATION_SZONE,5,5)
Debug.AddCard(59919307,0,0,LOCATION_SZONE,0,10)
Debug.AddCard(59919307,0,0,LOCATION_SZONE,1,10)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()