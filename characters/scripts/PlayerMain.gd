extends KinematicBody2D

var characterName = null
var max_hp = null
var hp = null
var speed = null

func _ready():
	pass
	
func _physics_process(delta):
	print("_physics_process not implemented")
	
func set_hp(hitpoints):
	hp = hitpoints
	if hp <= 0:
		die()
	
func take_damage(damage):
	set_hp(hp-damage)
	
func set_speed(s):
	speed = s
	
func die():
	print("Player has died")