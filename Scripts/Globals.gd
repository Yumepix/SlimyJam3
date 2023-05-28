extends Node


@onready var burst := false

@onready var mana := 100.0
@onready var power_mana := 5

@onready var resting := true

@onready var uptime_brasero := 20
@onready var total_braseros := 0
@onready var nb_brasero_up := 0

@onready var vie := 100.0
@onready var hurt_power := 10.0

@onready var player_position := Vector3.ZERO

func set_burst(b: bool):
	burst = b
	
func get_burst():
	return burst
	
