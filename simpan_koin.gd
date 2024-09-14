extends Node

var koin = preload("res://Karakter/Hero.tscn")


func add_coins(amount):
	koin += amount
	print("koin = ", koin)
	print("amount = ", amount)
func spend_coins(amount):
	if koin >= amount:
		koin -= amount
		return true
	return false

func get_coins():
	return koin
