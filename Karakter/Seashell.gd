extends KinematicBody2D

onready var raycast = $RayCast2D
onready var animation = $AnimationTree
onready var statemachine = animation["parameters/playback"]
var _bolapearl = preload("res://Karakter/BolaPearl.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var liat_target = raycast.is_colliding()
	if liat_target:
		statemachine.travel("fire")

func tembak():
	print("TEmBak!!")
	var bolapearl = _bolapearl.instance()
	bolapearl.global_position = $Position2D.global_position
	get_tree().current_scene.add_child(bolapearl)
