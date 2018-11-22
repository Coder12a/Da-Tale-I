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
	skillset = ["blade", "shield", "lightning", "depolarization", "rotation_distortion", "navigator", "telepathy", "portal_construction"]
	items = ["Rod_Of_Shiffara", "lasban", "assasin_wand"]
	Die_msg = "Yoda collapses and breathes his last."