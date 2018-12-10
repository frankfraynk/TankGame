extends Sprite

# class member variables go here, for example
export var speed = 3
export var rot_speed = 2.6

# var b = "textvar"
var pos = Vector2()
var rot = 0
func _ready():
	position = Vector2(get_viewport().size.x / 2, get_viewport().size.y / 2)
	set_process(true)
	pass

func _process(delta):
	
	
	if Input.is_action_pressed("ui_up"):
		if Input.is_action_pressed("ui_right"):
			rot += rot_speed * delta
		if Input.is_action_pressed("ui_left"):
			rot -= rot_speed * delta
		self.rotation = rot
		self.position += Vector2(0,-speed).rotated(rot)