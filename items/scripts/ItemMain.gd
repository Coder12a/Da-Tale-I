#The weight of the item
var weight = 0
#The cost on Ladrahasla Stamina
var cost_MP = 0
#The action used by this item
var action = load("res://actions/actionMain.gd").action

func _ready():
	pass

func use(attacker, defender):
	action(attacker, defender)