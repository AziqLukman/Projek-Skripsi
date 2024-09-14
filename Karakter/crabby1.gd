extends KinematicBody2D

var gravitasi = 12
var laju = -10
var kecepatan = Vector2.ZERO
export var arah = 1

var apakah_terluka = false
var attack = false
var facing_right = false
var velocity = Vector2()
onready var raycast = $RayCast2D
onready var animation = $AnimationPlayer

export var stamina = 3

func _ready():
	animation.play("run")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravitasi * delta
		
	if !raycast.is_colliding() && is_on_floor():
		flip()
	
	velocity.x = laju * arah
	move_and_slide(velocity)

func flip():
	facing_right = !facing_right
	
	scale.x = abs(scale.x) * -1
	if facing_right:
		kecepatan = abs(kecepatan)
	else:
		kecepatan = abs(kecepatan) * -1
