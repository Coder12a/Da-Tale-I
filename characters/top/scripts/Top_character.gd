extends "res://characters/scripts/PlayerMain.gd"

var class_data = load("res://characters/scripts/PartyList.gd")
var party = class_data.new()

func update_leader_stats():
	# There should be a character stats class so we don't have to match all those below.
	var player = party.head_of_the_party
	class_name = player.class_name
	character_name = player.character_name
	character_description = player.character_description
	hp = player.hp
	max_hp = player.max_hp
	speed = player.speed
	fp = player.fp
	max_fp = player.max_fp
	items = player.items
	Die_msg = player.Die_msg

func update_movement(delta):
	# check which state the character is in.
	match movement_state:
		"left":
			move_and_slide(Vector2(-speed,0))
		"up":
			move_and_slide(Vector2(0,-speed))
		"right":
			move_and_slide(Vector2(speed,0))
		"down":
			move_and_slide(Vector2(0,speed))
	# set state to none
	movement_state = "none"