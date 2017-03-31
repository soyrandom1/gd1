extends KinematicBody2D
# member variables here, example:
# var a=2
# var b="textvar"
const ball_scene = preload("res://Miniscenes/Ball.tscn")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	set_process_input(true)
	
	
func _fixed_process(delta):
	var y = get_pos().y
	var mouse_x = get_viewport().get_mouse_pos().x
	set_pos(Vector2(mouse_x-270,y))
	
func _input(event):
	if event.type == InputEvent.MOUSE_BUTTON && event.is_pressed():
		var ball = ball_scene.instance()
		ball.set_pos(get_pos()-Vector2(0,16))
		get_tree().get_root().add_child(ball)
		
	