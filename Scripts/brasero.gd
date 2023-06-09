extends StaticBody3D
@export var OBJ_FIRE: PackedScene

@onready var _timer = $Timer
@onready var _is_fire_started := false


# Called when the node enters the scene tree for the first time.
func _ready():
	#_timer.stop() # Replace with function body.
	#_timer.wait_time = Globals.uptime_brasero
	Globals.total_braseros = get_tree().get_nodes_in_group("brasero").size()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_3d_area_entered(area):
	if !_is_fire_started:
		print("start fire")
		var fire = OBJ_FIRE.instantiate()
		fire.position = Vector3i(0.0,2.215,0.024)
		fire.name = "fire"
		fire.set_shadows(true)
		fire.set_attenuation(1.5)
		add_child(fire)
		_is_fire_started = true
		Globals.nb_brasero_up += 1
		#_timer.start()



func _on_timer_timeout():
	var new_fire = get_node_or_null("fire")
	if new_fire != null:
		new_fire.queue_free()
		_is_fire_started = false
		Globals.nb_brasero_up -= 1
		print("destroy fire") # Replace with function body.
