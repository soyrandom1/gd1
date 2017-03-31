extends Area2D
var t = false;

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_door5_body_enter( body ):
	if(!t):
		if(body.get_name() == "pl"):
			print("out")
			var scene = preload("res://miniscenes/loadtestL.tscn")
			var node = scene.instance()
			add_child(node)
			node.set_pos(Vector2(-896,0))
			t = true;
