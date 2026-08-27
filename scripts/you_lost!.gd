extends Control

func _ready() -> void:
	var tween = create_tween()
	tween.tween_property(GlobalAudio, "volume_db", -15.0, 1.5)
	Global.score = 0
	
	SoundManager.play_sound(preload("res://Sound/Sound effects/Disappointed/Disappointed sound 1.mp3"))


func _on_home_button_pressed() -> void:
	TransitionScreen.transition_to("res://scenes/main_menu.tscn")

func _on_try_again_pressed() -> void:
	TransitionScreen.transition_to("res://scenes/level_1.tscn")
