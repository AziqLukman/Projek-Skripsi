extends KinematicBody2D

var speed = Vector2.ZERO
var laju = 10
var gravitasi = 12
var facing_right = false

onready var animation = $AnimationPlayer
onready var raycast = $RayCast2D

func _ready():
	animation.play("run")

func _process(delta):
	if not is_on_floor():
		speed.y += gravitasi * delta
	
	if is_on_wall() or not raycast.is_colliding():
		flip()
	
	speed.x = laju if facing_right else -laju
	speed = move_and_slide(speed, Vector2.UP)
	
func flip():
	facing_right = !facing_right
	scale.x *= -1 
