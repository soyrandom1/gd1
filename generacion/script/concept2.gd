extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Area2D_body_enter( body ):
	var y = get_pos().y
	print(y)
	set_pos(Vector2(get_pos().x,y-600))
