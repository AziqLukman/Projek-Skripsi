extends KinematicBody2D

var gravitasi = 12
var laju = 10
var kecepatan = Vector2.ZERO
export var arah = -1

var apakah_terluka = false
var attack = false

onready var pivot = $Pivot
onready var raycast = $Pivot/RayCast2D
export var arah_raycast = 1
export var stamina = 3

func _physics_process(delta):
	kecepatan.y += gravitasi

	if is_on_wall() or not raycast.is_colliding():
		ubah_arah()
		
	kecepatan.x = laju * arah
	
	if not apakah_terluka:
		kecepatan = move_and_slide(kecepatan, Vector2.UP)
		_update_animasi()
		
		raycast.cast_to.x = 20 * arah_raycast * arah

func _update_animasi():
	if is_on_floor():
		if attack:
			$AnimatedSprite.play("attack")
		else:
			$AnimatedSprite.play("run")
	else:
		$AnimatedSprite.play("jatuh")
	
	$AnimatedSprite.flip_h = true
	if arah == -1 :
		$AnimatedSprite.flip_h = false

func _on_DeteksiSamping_body_entered(body):
	if body.name == 'Hero':
		attack = true
		body.terluka()

func _on_DeteksiAtas_body_entered(body):
	if body.name == "Hero" and not apakah_terluka and stamina > 0:
		body.kecepatan.y = -200
		musuhterluka()

func musuhterluka():
	stamina -= 1
	apakah_terluka = true
	print("STAMINA: ", stamina)
	$AnimatedSprite.play("hit")
	yield(get_tree().create_timer(1), "timeout")
	if stamina <= 0:
		mati()
	else:
		apakah_terluka = false

func mati():
	$AnimatedSprite.play("mati")
	set_collision_layer_bit(2, false)
	set_collision_mask_bit(0, false)
	$DeteksiSamping.set_collision_layer_bit(2, false)
	$DeteksiSamping.set_collision_mask_bit(0, false)
	$DeteksiAtas.set_collision_layer_bit(2, false)
	$DeteksiAtas.set_collision_mask_bit(0, false)
	yield(get_tree().create_timer(1), "timeout")
	$AnimationPlayer.play("menghilang")

func hapus():
	print("Hapus!")
	queue_free()

func _on_DeteksiSamping_area_entered(area):
	if area.is_in_group("pedang"):
		musuhterluka()

func _on_PlayerDetektor_body_entered(body):
	if not attack:
		attack = true
		if body.global_position.x < global_position.x:
			arah = -1
		else: 
			arah = 1
		
func ubah_arah():
	arah = arah * -1
	arah_raycast = arah_raycast * -1
	pivot.scale.x = pivot.scale.x * -1

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "attack":
		attack = false
