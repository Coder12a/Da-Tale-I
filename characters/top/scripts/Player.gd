extends "res://characters/top/scripts/Top_character.gd"

# Store a reference to the main node.
var main_ref = null
# Store a reference to the playfield node.
var playfield_ref = null
# Store a reference to the hud node.
var hud_ref = null
# Store a reference to the dialogbox node.
var hud_dialogbox_ref = null
#
var Sprite_ref = null
#
var AnimationPlayer_ref = null
#
var animation_cycle = 0

func _ready():
	# Store a references for later used.
	main_ref = get_tree().get_root().get_node("Main")
	playfield_ref = main_ref.get_node("PlayField")
	hud_ref = main_ref.get_node("Hud")
	hud_dialogbox_ref = hud_ref.get_node("DialogBox")
	Sprite_ref = get_node("Sprite")
	AnimationPlayer_ref = get_node("AnimationPlayer")

func _physics_process(delta):
	if Input.is_key_pressed(KEY_W) || Input.is_key_pressed(KEY_UP):
		movement_state = "up"
		direction_state = "up"
	elif Input.is_key_pressed(KEY_S) || Input.is_key_pressed(KEY_DOWN):
		movement_state = "down"
		direction_state = "down"
	elif Input.is_key_pressed(KEY_D) || Input.is_key_pressed(KEY_RIGHT):
		movement_state = "right"
		direction_state = "right"
	elif Input.is_key_pressed(KEY_A) || Input.is_key_pressed(KEY_LEFT):
		movement_state = "left"
		direction_state = "left"
	# call base func update_movement
	update_animation()
	.update_movement(delta)

func update_animation():
	match movement_state:
		"none":
			match direction_state:
				"up":
					Sprite_ref.frame = 10
				"left":
					Sprite_ref.frame = 4
				"down":
					Sprite_ref.frame = 1
				"right":
					Sprite_ref.frame = 7
		"up":
			if animation_cycle < 0:
				if Sprite_ref.frame < 9:
					Sprite_ref.frame = 9
				if (Sprite_ref.frame + 1) <= 11:
					Sprite_ref.frame += 1
				else:
					Sprite_ref.frame = 9
				animation_cycle = speed / 30
		"left":
			if animation_cycle < 0:
				if Sprite_ref.frame < 3:
					Sprite_ref.frame = 3
				if Sprite_ref.frame > 5:
					Sprite_ref.frame = 3
				if (Sprite_ref.frame + 1) <= 5:
					Sprite_ref.frame += 1
				else:
					Sprite_ref.frame = 3
				animation_cycle = speed / 30
		"down":
			if animation_cycle < 0:
				if Sprite_ref.frame > 2:
					Sprite_ref.frame = 0
				if (Sprite_ref.frame + 1) <= 2:
					Sprite_ref.frame += 1
				else:
					Sprite_ref.frame = 0
				animation_cycle = speed / 30
		"right":
			if animation_cycle < 0:
				if Sprite_ref.frame < 6:
					Sprite_ref.frame = 6
				if Sprite_ref.frame > 8:
					Sprite_ref.frame = 6
				if (Sprite_ref.frame + 1) <= 8:
					Sprite_ref.frame += 1
				else:
					Sprite_ref.frame = 6
				animation_cycle = speed / 30
	animation_cycle -= 1


func load_sprite_sheet():
	var texture = ImageTexture.new()
	texture.load(top_sheet)
	Sprite_ref.texture = texture
	Sprite_ref.hframes = 3
	Sprite_ref.vframes = 4
	Sprite_ref.frame = 1