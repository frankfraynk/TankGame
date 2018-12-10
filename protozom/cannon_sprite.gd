extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	
	set_process(true)
	pass

func _process(delta):
	self.position = get_parent().get_child(0).position
	var mpos = get_viewport().get_mouse_position()
	look_at(mpos)


