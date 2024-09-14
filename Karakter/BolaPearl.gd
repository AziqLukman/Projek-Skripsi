extends Area2D

var kecepatan = 50
var arah = Vector2.LEFT

func _process(delta):
	translate(arah*kecepatan*delta)

func _on_BolaPearl_body_entered(body):
	if body.name == 'Hero':
		body.terluka()
	kecepatan = 0 
	$Sprite.visible = false
	$CPUParticles2D.emitting = true
	yield(get_tree().create_timer($CPUParticles2D.lifetime),"timeout")
	queue_free()
