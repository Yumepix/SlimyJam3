extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func set_shadows(b: bool):
	$OmniLight3D.shadow_enabled = b

func set_attenuation(f: float):
	$OmniLight3D.omni_attenuation = f
