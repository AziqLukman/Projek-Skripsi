extends Area2D

var speed = 600
var direction = Vector2.ZERO
#
func _ready():
	connect("body_entered", self, "_on_body_entered")

func _physics_process(delta):
	position += direction * speed * delta
	if not get_viewport_rect().has_point(position):
		queue_free()
		
func _on_body_entered(body):
	if body.is_in_group("enemies"):
		body.take_damage(10)  # Contoh: Fungsi untuk mengambil damage di node musuh
		queue_free()
