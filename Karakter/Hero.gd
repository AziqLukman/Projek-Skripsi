extends KinematicBody2D
class_name Player

var laju_cepat = 600
var laju_normal = 120
var laju = laju_normal
var kecepatan = Vector2.ZERO
var lompat = -380
var gravitasi = 12
var item = 0
var koin = 1000
var sedang_terluka = false
var health_maks = 100
var health = 100
var bawa_pedang = false
var projectile_scene = preload("res://Material/Pedang.tscn")
var animasi_dengan_pedang = preload("res://Karakter/HeroDenganPedang.tres")
var sedang_serang = false
onready var sprite = $Sprite
onready var collision_shape = $serang/CollisionPedang

signal hero_mati
signal hero_menang
signal hero_apdet_health(value)
signal hero_apdet_koin(value)
signal hero_apdet_item(value)

func _ready():
	Global.Player = self
	
func _input(event):
	if event is InputEventKey and event.is_action_pressed("serang") and bawa_pedang:
		serang()
#	elif event is InputEventKey and event.is_action_pressed("lempar"):
#		lempar_serangan()

func serang():
	sedang_serang = true
	sprite.play("Serang")
	$serang/CollisionPedang.disabled = false
	$serang/CollisionPedang2.disabled = false
	yield(sprite, "animation_finished")
	$serang/CollisionPedang.disabled = true 
	$serang/CollisionPedang2.disabled = true
	sedang_serang = false

#func lempar_serangan():
#	var projectile = projectile_scene.instance()
#	projectile.position = global_position  # Posisi karakter atau posisi yang diinginkan untuk memulai proyektil
#	var direction = get_global_mouse_position() - global_position
#	projectile.direction = direction.normalized()  # Normalisasi arah proyektil
#	get_parent().add_child(projectile)

func _physics_process(delta):
	kecepatan.y = kecepatan.y + gravitasi
	
	if not sedang_terluka and Input.is_action_pressed("gerak_kanan"):
		kecepatan.x = laju
	if not sedang_terluka and Input.is_action_pressed("gerak_kiri"):
		kecepatan.x = -laju
	if not sedang_terluka and Input.is_action_just_pressed("lari_cepat"):
		lari_cepat()
	if not sedang_terluka and Input.is_action_pressed("lompat") and is_on_floor():
		kecepatan.y = lompat
	
	kecepatan.x = lerp(kecepatan.x, 0, 0.2)
	kecepatan = move_and_slide(kecepatan, Vector2.UP)
	
	if not sedang_terluka and not sedang_serang:
		update_animasi()

func update_animasi():
	if is_on_floor():
		if kecepatan.x < (laju * 0.5) and kecepatan.x > (-laju * 0.5):
			sprite.play("Diam")
		else:
			if laju == laju_normal:
				sprite.play("Lari")
			elif laju == laju_cepat:
				sprite.play("LariCepat")
	else:
		if kecepatan.y > 0:
			sprite.play("Jatuh")
		else:
			sprite.play("Lompat")
			
	sprite.flip_h = false
	if kecepatan.x < 0:
		sprite.flip_h = true

func lari_cepat():
	laju = laju_cepat
	$Timer.start()

func _on_Timer_timeout():
	laju = laju_normal

func ambilkoin():
	koin +=1
	print("Koin: ", koin)
	emit_signal("hero_apdet_koin", koin)
	var group_koin = get_tree().get_nodes_in_group("GrupKoin")
	var jumlah_koin = group_koin.size()
	print("Grup Koin: ", group_koin)
	print("Jumlah: ", jumlah_koin)
	#kalau abis manggil signal hero_menang
	if jumlah_koin == 0:
		emit_signal("hero_menang")

func ambilitem():
	item +=1
	print("ITEM: ", item)
	emit_signal("hero_apdet_item", item)
	
func terluka():
	print("Terluka")
	sedang_terluka = true
	
	health -= 15
	emit_signal("hero_apdet_health", (float (health)/float(health_maks)) * 100)
	
	if kecepatan.x > 0:
		kecepatan.x = -500
	else:
		kecepatan.x = 500
		
	sprite.play("Terluka")
	yield(get_tree().create_timer(1),"timeout")
	if health <= 0:
		mati()
	else:
		sedang_terluka = false

func mati():
	sprite.play("Mati")
#	Global.respawn()
	set_collision_layer_bit(0, false)
	set_collision_mask_bit(2, false)
	yield(get_tree().create_timer(1), "timeout")
	emit_signal("hero_mati")
	
#	
func ambilpedang():
	if not bawa_pedang:
		bawa_pedang = true
		sprite.frames = animasi_dengan_pedang

func die():
	Global.respawn()

