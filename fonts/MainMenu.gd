extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var tn
#onready var effect = get_node("twn")
#onready var sprite = get_parent()
func _process(delta):
	pass
	#if GlobalVar.playerdead == true:
	#$AnimationPlayer.play("PlayerDed")
	
func _ready():
	#$AnimationPlayer.play("IdleMenu")
	pass

func _on_Play_pressed():
#	$AnimationPlayer.play("ZoomStart")
	visible = false
	GlobalVar.CanPlay = true
	
	pass # Replace with function body.


func _on_quit_pressed():
	#$AnimationPlayer.play("ZoomStart")
	get_tree().quit()
	pass # Replace with function body.





#func _on_AnimationPlayer_animation_finished(anim_name):
	#GlobalVar.CanPlay = true
	#visible = false
#	pass # Replace with function body.
