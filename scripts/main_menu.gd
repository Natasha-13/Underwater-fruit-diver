extends Control

@onready var main_buttons: VBoxContainer = $"MarginContainer/Main Buttons"
@onready var options: Panel = $Options

func _ready():
	main_buttons.visible = true
	options.visible = false

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_options_pressed() -> void:
	print("options pressed")
	main_buttons.visible = false
	options.visible = true

func _on_credits_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_exit_options_pressed() -> void:
	_ready()
