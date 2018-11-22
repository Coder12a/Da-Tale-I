extends "res://characters/scripts/PlayerMain.gd"

var class_data = load("res://characters/scripts/PartyList.gd")
var party = class_data.new()
var character_index = 0
var spacing_y = 100
var spacing_x = 100
var offset_x = 800
var offset_y = 100

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

func _ready():
	for i in party.party:
		if party.party[i].name == character_name:
			character_index = i
	if character_index % 2 == 0: # If character is an even index
		position = Vector2(offset_x, character_index * spacing_y + offset_y)
	else:
		position = Vector2(offset_x + spacing_x, character_index * spacing_y + offset_y)

func update_movement(delta):
	# check which state the character is in.
	match movement_state:
		"left":
			move_and_slide(Vector2(-speed,0))
		"right":
			move_and_slide(Vector2(speed,0))
	# set state to none
	movement_state = "none"
