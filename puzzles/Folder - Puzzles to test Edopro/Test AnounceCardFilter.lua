--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(92512625,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40605147,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40605147,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(41420027,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(84749824,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(16021142,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(16021142,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(18486927,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(65681983,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511005010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(512000137,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(200000000,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Mirror Force
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)


Debug.AddCard(84749824,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(41420027,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
