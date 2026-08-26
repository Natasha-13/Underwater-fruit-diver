extends Node2D

# Drag your Firework.tscn into this Inspector field
@export var firework_scene: PackedScene 
@export var spawn_interval: float = 0.1

var timer: Timer

func _ready() -> void:
	timer = Timer.new()
	timer.wait_time = spawn_interval
	timer.autostart = true
	timer.timeout.connect(_spawn_firework)
	add_child(timer)

func _spawn_firework() -> void:
	if not firework_scene:
		return

	var firework = firework_scene.instantiate()
	var screen_size = get_viewport_rect().size

	# Choose a random position within viewport boundaries
	firework.position = Vector2(
		randf_range(50, screen_size.x - 50),
		randf_range(50, screen_size.y - 50)
	)

	add_child(firework)
