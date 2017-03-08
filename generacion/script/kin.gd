
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"

var input_states = preload("res://script/input_states.gd")

var y_speed = Vector2(0,5)
var x_speed = Vector2(5,0)

var btn_right = input_states.new("btn_right")
var btn_left = input_states.new("btn_left")
var btn_up = input_states.new("btn_up")
var btn_down = input_states.new("btn_down")

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	if btn_right.check() == 2:
		set_pos(get_pos()+x_speed)
	elif btn_left.check() ==2:
		set_pos(get_pos()-x_speed)

	if btn_up.check() ==2:
		set_pos(get_pos()-y_speed)
	elif btn_down.check() ==2:
		set_pos(get_pos()+y_speed)
