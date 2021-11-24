extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var motion = Vector2()
var speed = 5


func _physics_process(delta):
	position.x -= speed
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


