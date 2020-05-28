extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var particles = preload("res://particles.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("left"):
		#leftHit
		var newParticles = particles.instance()
		$leftDrum.add_child(newParticles)
		newParticles.emitting = true
		$low.play()
		pass
	if Input.is_action_just_pressed("right"):
		#rightHit
		var newParticles = particles.instance()
		$rightDrum.add_child(newParticles)
		newParticles.emitting = true
		$high.play()
		pass
