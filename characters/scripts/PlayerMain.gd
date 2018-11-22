extends KinematicBody2D

# The character's name.
var character_name = ""
# The character's description.
var character_description = ""
# Current health points.
var hp = 0
# Max health points.
var max_hp = 0
# Speed of char.
var speed = 0
# Force points.
var fp = 0
# Max force points.
var max_fp = 0
# Empty array of items.
var items = []
# Movement states of this character.
# none, left, up, right, down
var movement_state = "none"

# On death message.
var Die_msg = "ded"

func set_hp(hitpoints):
	hp = hitpoints
	if hp <= 0:
		die()

func take_damage(damage):
	set_hp(hp - damage)

func set_max_hp(hitpoints):
	max_hp = hitpoints

func set_max_speed(s):
	speed = s

func die():
	print(Die_msg)