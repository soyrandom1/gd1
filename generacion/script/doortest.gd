extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var scene = load("res://miniscenes/loadtest.tscn")
	


func _on_Area2D_body_enter( body ):
	if(body.get_name() == "pl"):
		print("out")
		var scene = preload("res://miniscenes/loadtest.tscn")
		var node = scene.instance()
		add_child(node)
		node.set_pos(Vector2(-400,-614))