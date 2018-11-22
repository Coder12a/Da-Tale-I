extends "res://characters/scripts/PlayerMain.gd"

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