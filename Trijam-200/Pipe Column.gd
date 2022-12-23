tool
extends Node2D

export var deleteAtXCord =-10
export var speed = 1
export var gap = 0
export var freeze = false

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# Adds Gap In Pipes
	get_node("Pipe-Top").position.y = -160 - int(gap/2)
	get_node("Pipe-Bottom").position.y = 160 + int(gap/2)
	
	# Movement / Freeing
	if freeze:
		pass
	elif global_position.x > deleteAtXCord and !Engine.editor_hint:
		position.x -= speed * delta
	else:
		queue_free()
