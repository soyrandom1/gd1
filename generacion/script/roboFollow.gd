///robotTracking
extends KinematicBody2D
export var speedRobot = 170
var raynodeR
func _ready():
 set_fixed_process(true)
 raynodeR = get_node("RobotRaycast")

func _fixed_process(delta):
	var Rmove = Vector2()
	if(Input.is_action_pressed("ui_up")):
		Rmove+= Vector2(0,-1)
		raynodeR.set_rotd(180)
	if(Input.is_action_pressed("ui_down")):
		Rmove+= Vector2(0,1)
		raynodeR.set_rotd(0)

	if(Input.is_action_pressed("ui_left")):
		Rmove+= Vector2(-1,0)
		raynodeR.set_rotd(-90)
		get_node( "RobotSprite" ).set_flip_h(true)
	if(Input.is_action_pressed("ui_right")):
		Rmove+= Vector2(1,0)
		raynodeR.set_rotd(90)
		get_node( "RobotSprite" ).set_flip_h(false)
Rmove = Rmove.normalized()*speedRobot*delta*1.5
Rmove(Rmove)	
		