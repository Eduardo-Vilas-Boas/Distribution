--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Hand
Debug.AddCard(88264978,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(876330,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(85991529,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(85991529,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(85679527,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31061682,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55885348,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(89631139,0,0,LOCATION_MZONE,0,4,true)
Debug.AddCard(36870345,0,0,LOCATION_MZONE,1,4,true)
--Debug.AddCard(89631139,0,0,LOCATION_MZONE,2,4,true)
Debug.AddCard(89631139,0,0,LOCATION_MZONE,3,4,true)
Debug.AddCard(89631139,0,0,LOCATION_MZONE,4,4,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()