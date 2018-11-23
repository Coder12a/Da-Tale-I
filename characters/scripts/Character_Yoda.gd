extends "res//characters/scrpts/PlayerMain.gd"

func _init():
	class_name = "Yoda"
	character_name = "Yoda the frog"
	hp = 60
	max_hp = 60
	speed = 100
	fp = 0
	max_fp = 0
	MP = 100
	max_MP = 100
	skillset = {"blade": 1, "shield": 1, "lightning": 1, "depolarization": 1, "rotation_distortion": 1, "navigator": 1, "telepathy": 1, "portal_construction": 1}
	items = {"Rod_Of_Shiffara": 1, "lasban": 1, "assasin_wand": 1}
	Die_msg = "Yoda collapses and breathes his last."