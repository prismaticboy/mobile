extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(false)
	yield(get_tree().create_timer(4),"timeout")
	set_process(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var gravity = Input.get_accelerometer()
	
	self.position.x=504+(gravity.x*20)
	self.position.y=304-(gravity.y*20)
	var input_value = abs(gravity.x)*delta
	rpc_unreliable("set_position",input_value)
	pass
