extends "res://characters/scripts/Top_character.gd"

func _init():
	hp = 50
	max_hp = 50
	speed = 100

func _physics_process(delta):
	if Input.is_key_pressed(KEY_W) || Input.is_key_pressed(KEY_UP):
		movement_state = "up"
	elif Input.is_key_pressed(KEY_S) || Input.is_key_pressed(KEY_DOWN):
		movement_state = "down"
	elif Input.is_key_pressed(KEY_D) || Input.is_key_pressed(KEY_RIGHT):
		movement_state = "right"
	elif Input.is_key_pressed(KEY_A) || Input.is_key_pressed(KEY_LEFT):
		movement_state = "left"
	# call base func update_movement
	.update_movement(delta)