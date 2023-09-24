extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var gravity = Input.get_gravity()
	self.position.x=504+(gravity.x*50)
	self.position.y=304-(gravity.y*50)
	rpc_unreliable("ball_position",self.position)
	pass
