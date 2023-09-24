extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var ball=str(AutoLoad.playerID)
	ball=preload("res://cannonBall.tscn").instance()
	ball.set_name(str(AutoLoad.playerID))
	ball.set_network_master(AutoLoad.playerID)
	add_child(ball)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
