extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _process(delta):
	var acc=Input.get_accelerometer()
	rpc_id(1,"phone_beat",acc.y)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
