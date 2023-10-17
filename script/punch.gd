extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var beat=str(AutoLoad.playerID)
	beat=preload("res://scene/beat.tscn").instance()
	beat.set_name(str(AutoLoad.playerID))
	beat.set_network_master(AutoLoad.playerID)
	add_child(beat)
	pass
