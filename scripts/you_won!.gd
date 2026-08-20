extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


var firework_scene = preload("res://prefabs/fireworks.tscn")

func spawn_firework(pos: Vector2):
	var fw = firework_scene.instantiate()
	fw.position = pos
	add_child(fw)
	fw.emitting = true
	await get_tree().create_timer(2.0).timeout
	fw.queue_free()
