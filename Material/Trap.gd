extends Node2D


func _on_Area2D_body_entered(body):
	if body.name == 'Hero':
		body.terluka()
