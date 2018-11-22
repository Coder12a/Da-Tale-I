extends "res://characters/scripts/PlayerMain.gd"

func _init():
	class_name = "John"
	character_name = "John the Penguin"
	character_description = "A somewhat tall penguin that likes ice."
	hp = 50
	max_hp = 50
	speed = 100
	fp = 0
	max_fp = 0
	items = ["sunglass","Ice Cubes"]
	Die_msg = "John the Penguin was put back on ice."