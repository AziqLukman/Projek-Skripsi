extends Node2D

class_name Checkpoint
export var spawn_point = false
onready var animation = $AnimationPlayer
var activated = false 

func active():
	Global.current_cp = self
	activated = true
	animation.play("active")


func _on_Area2D_area_entered(area):
	if area.get_parent() is Player && !activated:
		active()
