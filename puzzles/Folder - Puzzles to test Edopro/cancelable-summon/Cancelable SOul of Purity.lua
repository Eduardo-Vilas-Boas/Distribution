--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Hand
Debug.AddCard(77527210,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69832741,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(77387463,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(87303357,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(87303357,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(95956346,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(95956346,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(87303357,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Monster Zones
Debug.AddCard(95956346,0,0,LOCATION_MZONE,0,1,true)
Debug.AddCard(77387463,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(77387463,0,0,LOCATION_MZONE,2,1,true)
Debug.AddCard(95956346,0,0,LOCATION_MZONE,3,1,true)
Debug.AddCard(95956346,0,0,LOCATION_MZONE,4,1,true)
Debug.AddCard(77387463,0,0,LOCATION_MZONE,5,1,true)
Debug.AddCard(77387463,0,0,LOCATION_MZONE,6,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()