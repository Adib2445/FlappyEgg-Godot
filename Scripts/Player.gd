extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Gravity = 25
var jumpGravity = 250
var motion = Vector2()
var count = 0
var isded = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.
func _physics_process(delta):
	
	if isded == true:
		get_tree().reload_current_scene()
	
	#if isded == true:
	#GlobalVar.playerdead = false
	#if count == 60:
	#	print("EGG KILL")
	#	queue_free()
	#	get_tree().reload_current_scene()
		#GlobalVar.CanPlay = false
		
	#	count = 0
	#else:
	#	count += 1
	
	motion.y += Gravity
	if GlobalVar.CanPlay == true:
		#motion.y += Gravity
		if Input.is_action_pressed("FLAP"):
			$Sprite3.frame = 43
			$JumpAudio.play()
			motion.y = -jumpGravity
		else:
			$Sprite3.frame = 32
			$JumpAudio.stop()
		move_and_slide(motion)
	else:
		motion.y = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Area2D_area_entered(area):
	
	GlobalVar.CanPlay = false
	isded = true
	pass # Replace with function body.
