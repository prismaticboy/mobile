extends Node


func _ready():
	var Player = str(AutoLoad.playerID)
	Player=preload("res://scene/cannonBall.tscn").instance()
	Player.set_name(str(AutoLoad.playerID))
	Player.set_network_master(AutoLoad.playerID)
	add_child(Player)
	pass # Replace with function body.
