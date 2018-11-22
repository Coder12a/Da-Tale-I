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

func update_movement(delta):
	# set state to none
	movement_state = "none"
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