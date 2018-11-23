extends "res://actions/actionMain.gd"

func _init():
	cost_MP = 0
	cost_HP = 0
	
func action(attacker, defender):
	var damage = 20
	defender.takeDamage(damage)
	dialogueBox.add_dialog("Bear hug deals %d damage!" % damage)