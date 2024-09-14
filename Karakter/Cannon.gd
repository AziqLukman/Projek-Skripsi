extends KinematicBody2D

onready var raycast = $RayCast2D
onready var animation = $AnimationTree
onready var statemachine = animation["parameters/playback"]
var _bolameriam = preload("res://Karakter/Bolameriam.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var liat_target = raycast.is_colliding()
	if liat_target:
		statemachine.travel("nembak")

func tembak():
	print("TEmBak!!")
	var bola = _bolameriam.instance()
	bola.global_position = $Position2D.global_position
	get_tree().current_scene.add_child(bola)
