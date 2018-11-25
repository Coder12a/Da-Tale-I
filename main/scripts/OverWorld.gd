extends Node

# Store a reference to the playfield node.
var playfield_ref = null
# Store a reference to the hud node.
var hud_ref = null
# Store a reference to the dialogbox node.
var hud_dialogbox_ref = null
# Store a reference to the Player node.
var player_ref = null

func _ready():
	playfield_ref = get_node("PlayField")
	hud_ref = get_node("Hud")
	hud_dialogbox_ref = hud_ref.get_node("DialogBox")
	player_ref = playfield_ref.get_node("Player")
	player_ref.party.join_party(hud_dialogbox_ref,"John")
	player_ref.update_leader_stats()