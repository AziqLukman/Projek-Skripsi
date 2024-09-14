extends KinematicBody2D

onready var raycast = $RayCast2D
onready var animation = $AnimationTree
onready var statemachine = animation["parameters/playback"]

var peluru = preload("res://Karakter/WoodSpike.tscn")

func _process(delta):
	var liat_target = raycast.is_colliding()
	if liat_target:
		statemachine.travel("attack2")
		
func tembak():
	print("TEmbakk!!")
	var woodspike = peluru.instance()
	woodspike.global_position = $Position2D.global_position
	
	var arah_tembak = (raycast.get_collision_point() - woodspike.global_position).normalized()
	woodspike.arah = arah_tembak
	get_tree().current_scene.add_child(woodspike)
