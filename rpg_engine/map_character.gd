extends KinematicBody2D

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
var movement_states = "none"

# On death message.
var Die_msg = "ded"

func _ready():
	pass

func update_movement(delta):
	# check which state the character is in.
	match [movement_states]:
		"left":
			move_and_slide(Vector2(-speed,0))
		"up":
			move_and_slide(Vector2(0,-speed))
		"right":
			move_and_slide(Vector2(speed,0))
		"down":
			move_and_slide(Vector2(0,speed))
	pass

func set_hp(hitpoints):
	hp = hitpoints
	if hp <= 0:
		die()
	pass

func take_damage(damage):
	set_hp(hp - damage)
	pass

func set_max_hp(hitpoints):
	max_hp = hitpoints
	pass

func set_max_speed(s):
	speed = s
	pass

func die():
	print(Die_msg)