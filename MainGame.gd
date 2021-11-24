extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var value = 0
var score = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.visible = false
	
	pass # Replace with function body.

func _physics_process(delta):
	if GlobalVar.BG_value == 0:
		BagroundMusic.play()
		GlobalVar.BG_value = 1
	if GlobalVar.CanPlay == true:
		score += 1
		GlobalVar.score = score
		$Label.text = str(score)
	
	$ParallaxBackground/ParallaxLayer.motion_offset.x -= delta * 20
	$ParallaxBackground/ParallaxLayer2.motion_offset.x -= delta * 50
	if GlobalVar.CanPlay == true:
		$Label.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
