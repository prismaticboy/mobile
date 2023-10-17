extends Control



func _process(delta):
	var acc=Input.get_accelerometer()
	rpc_id(1,"beatScore",acc.y)
