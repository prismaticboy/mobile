extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var text_edit = $TextEdit


#receive
remote func connected_client():
	print("connected")
	
remote func start_game(id,sport):
	print(id)
	AutoLoad.playerID=id
	print("start_game")
	if sport==2:
		get_tree().change_scene("res://Control.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().connect("network_peer_connected",self,"_player_connected")
	pass # Replace with function body.


func _player_connected(id):
	AutoLoad.playerID = id
	rpc_id(id,"register_player",123)
	$".".hide()
#	var Game = preload("res://Control.tscn").instance()
#	get_tree().get_root().add_child(Game)


func _on_Button_pressed():
	var net = NetworkedMultiplayerENet.new()
	net.create_client(text_edit.text,9999)
	get_tree().set_network_peer(net)
	pass # Replace with function body.
