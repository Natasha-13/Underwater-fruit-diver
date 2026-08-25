extends Control

func _ready() -> void:
	var tween = create_tween()
	tween.tween_property(GlobalAudio, "volume_db", -15.0, 1.5)
	
	SoundManager.play_sound(preload("res://Sound/Sound effects/Disappointed/Disappointed sound 1.mp3"))


func _on_home_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
