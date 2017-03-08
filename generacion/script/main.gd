
extends Node2D
const dun_scn = preload("res://generic.tscn")
const pj = preload("res://pj.tscn")


func _ready():
	call_deferred("gen")
	call_deferred("pjload")
func gen():
	var og = dun_scn.instance()
	og.set_pos(Vector2(0, 0))
	get_tree().get_root().add_child(og)
func pjload():
	var p = pj.instance()
	p.set_pos(Vector2(400,300))
	get_tree().get_root().add_child(p)


