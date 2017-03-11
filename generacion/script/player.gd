extends KinematicBody2D
export var speedP = 200
var raynode
func _ready():
	set_fixed_process(true)
	raynode = get_node("RayCast2D")

func _fixed_process(delta):
	var move = Vector2()
	
	if(Input.is_action_pressed("ui_up")):
		move += Vector2(0,-1)
		raynode.set_rotd(180)
	if(Input.is_action_pressed("ui_down")):
		move += Vector2(0,1)
		raynode.set_rotd(0)
	if(Input.is_action_pressed("ui_left")):
		move += Vector2(-1,0)
		raynode.set_rotd(-90)
		get_node( "Sprite" ).set_flip_h(true)
	if(Input.is_action_pressed("ui_right")):
		move += Vector2(1,0)
		raynode.set_rotd(90)
		get_node( "Sprite" ).set_flip_h(false)
	move = move.normalized()*speedP*delta
	move(move)
	