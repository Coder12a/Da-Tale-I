extends "res://characters/scripts/PlayerMain.gd"

func _init():
	class_name = "Vladimir"
	character_name = "Vladimir Grabinski"
	character_description = "a young, strong russian bear."
	hp = 150
	max_hp = 150
	speed = 150
	fp = 0
	max_fp = 0
	MP = 0
	max_MP = 5
	items = []
	Die_msg = "Vladimir Grabinski died."