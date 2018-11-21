extends "res://characters/scripts/PlayerMain.gd"

func _init():
	hp = 50
	max_hp = 50
	speed = 100
	
func _ready():
	pass
	


func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_W) || Input.is_key_pressed(KEY_UP):
		move_and_slide(Vector2(0,-speed))
	elif Input.is_key_pressed(KEY_S) || Input.is_key_pressed(KEY_DOWN):
		move_and_slide(Vector2(0,speed))
	elif Input.is_key_pressed(KEY_D) || Input.is_key_pressed(KEY_RIGHT):
		move_and_slide(Vector2(speed,0))
	elif Input.is_key_pressed(KEY_A) || Input.is_key_pressed(KEY_LEFT):
		move_and_slide(Vector2(-speed,0))
	
	pass

func die():
	print("This is a function to test stuff. Vladimir is ded.")