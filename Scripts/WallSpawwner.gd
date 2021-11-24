extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var wallspawwner = preload("res://Wall.tscn")

var count = 0

func _process(delta):
	#$AnimationPlayer.play("Move")
	if GlobalVar.CanPlay == true:
		if count == 35:
			var wall = wallspawwner.instance()
			#add_child(wall)
			wall.position = position;
			get_parent().add_child(wall)
			count = 0
		else:
			count += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
