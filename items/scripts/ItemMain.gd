#The function that is run when the item is used
var useFunc = null
#The weight of the item
var weight = 0
#The cost on Ladrahasla Stamina
var cost_MP = 0

func use(attacker, defender):
	useFunc(attacker, defender)