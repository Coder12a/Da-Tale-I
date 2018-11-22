extends "res://characters/scripts/PlayerMain.gd"

func _init():
	class_name = "CoffeeFarmer"
	character_name = "The Coffee Farmer"
	hp = 150
	max_hp = 150
	speed = 100
	fp = 0
	max_fp = 0
	MP = 40
	max_MP = 40
	skillset = [("blade", 1), ("shield", 1)]
	items = [("Mese_Crystalis", 1)]
	Die_msg = "In a cloud of dust, the Coffee Farmer finally goes down."