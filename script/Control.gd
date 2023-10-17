extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var move:Vector2

#remote func _set_position(pos):
#	print(pos)

# Called when the node enters the scene tree for the first time.
func _ready():
	var Player = str(AutoLoad.playerID)
	Player=preload("res://scene/emoji.tscn").instance()
	Player.set_name(str(AutoLoad.playerID))
	Player.set_network_master(AutoLoad.playerID)
	$Node2D.add_child(Player)
	pass # Replace with function body.

