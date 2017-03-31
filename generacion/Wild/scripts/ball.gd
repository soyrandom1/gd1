extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"
const SPEEDUP = 4
const MAXSPEED = 400
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
 	set_fixed_process(true)

func _fixed_process(delta):
	delta
	#obtiene todos los cuerpos con los que colisiona
	#para que funcione hay que activar contact monitor en el nodo
	#poner en contact report cuantos contact queremos tener
	#es segun los nodos, tengo 1 nodo de bricks, por lo tanto, 1
	var bodies = get_colliding_bodies()
	#busca cada cuerpo con el que estamos colisionando y crea una variable Body para cada uno
	for body in bodies:
		if body.is_in_group("BickGroup"):
			get_node("/root/World").score +=5
			body.queue_free()
		
		if body.get_name() == "paddle":
			var Speed = get_linear_velocity().length()
			var direction = get_pos() - body.get_node("Position2D").get_global_pos()
			var velocity = direction.normalized()*min(Speed+SPEEDUP, MAXSPEED)
			set_linear_velocity(velocity)
		
		if get_pos().y > get_viewport_rect().end.y:
			queue_free()


