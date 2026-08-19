extends Area2D

@onready var closed: Sprite2D = $Closed
@onready var opened: Sprite2D = $Opened
const GOLD_APPLE = preload("res://prefabs/gold_apple.tscn")
var mouse_in = false

func _ready():
	closed.visible = true
	opened.visible = false

func _on_mouse_entered() -> void:
	mouse_in = true

func spawn_item() -> void:
	var item = GOLD_APPLE.instantiate()
	item.global_position = global_position + Vector2(0,-10)
	get_tree().current_scene.add_child(item)
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if mouse_in:
			open_chest()

func _on_mouse_exited() -> void:
	mouse_in = false

func open_chest():
	print("opened chest")
	closed.visible = false
	opened.visible = true
	spawn_item()
