extends Node3D

const OBJ_FIRE_FLAME: Object = preload("res://fire_flame.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.get_burst():
		pop_fire_flame()
	#$Staff/fire_flame.visible = Globals.get_burst()
	#x = 0.076
	#y = 2.982
	#z = -0.009
	
func pop_fire_flame():
	var fire_flame = OBJ_FIRE_FLAME.instantiate()
	fire_flame.position = Vector3i(0.076,2.982,-0.009)
	$Staff.add_sibling(fire_flame)
