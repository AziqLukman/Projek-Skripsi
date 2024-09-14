extends Node2D

export var speed = 250
var current_speed = 0.0

func _process(delta):
	position.y += current_speed * delta


func _on_body_body_entered(body):
	if body.name == "Hero":
		body.terluka()
#
func _on_deteksi_area_entered(area):
	if area.get_parent() is Player:
		$AnimationPlayer.play("jatuh")

func fall():
	current_speed = speed
