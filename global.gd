extends Node

var current_cp = Checkpoint 
var Player : Player

func respawn():
	if current_cp != null:
		Player.position = current_cp.global_position
