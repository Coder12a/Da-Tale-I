extends "res://characters/scripts/PlayerMain.gd"

func _init():
	class_name = "TeaFarmer"
	character_name = "The Tea Farmer"
	hp = 65
	max_hp = 70
	speed = 50
	fp = 0
	max_fp = 0
	MP = 36
	max_MP = 64
	skillset = [("blade", 1), ("shield", 1), ("lightning", 1), ("mind sweep", 1), ("navigator", 1)]
	items = [("Tea_Brewing_Rod", 1)]
	Die_msg = "The old Tea Farmer has died."