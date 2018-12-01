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
	elif Input.is_key_pressed(KEY_S) || Input.is_key_pressed(KEY_DOWN):
		movement_state = "down"
	elif Input.is_key_pressed(KEY_D) || Input.is_key_pressed(KEY_RIGHT):
		movement_state = "right"
	elif Input.is_key_pressed(KEY_A) || Input.is_key_pressed(KEY_LEFT):
		movement_state = "left"
	# call base func update_movement
	.update_movement(delta)

func load_sprite_sheet():
	var texture = ImageTexture.new()
	texture.load(top_sheet)
	Sprite_ref.texture = texture
	Sprite_ref.hframes = 3
	Sprite_ref.vframes = 4
	Sprite_ref.frame = 1