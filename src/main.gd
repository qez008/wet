extends Control

@onready var square: ColorRect = $TextureRect/square


func _ready() -> void:
	# Configure signals
	square.mouse_entered.connect(func(): square.color = rand_col())
	square.mouse_exited.connect(func(): square.color = Color.WHITE)


func rand_col() -> Color:
	var rand_vec := Vector2.from_angle(randf() * PI / 2) / 2
	var rand_r := randf() / 3
	var rand_b := randf() / 3
	var color = Color(rand_vec.x + rand_r, 0.01, rand_vec.y + rand_b)
	print("Setting color to %s" % color)
	return color
