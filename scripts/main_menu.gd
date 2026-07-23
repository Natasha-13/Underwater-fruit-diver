extends Control

@onready var main_buttons: VBoxContainer = $"MarginContainer/Main Buttons"
@onready var options: Panel = $Options
@onready var instructions: Panel = $Instructions
@onready var credits: Panel = $Credits
@onready var levels: Panel = $Levels


func _ready():
	main_buttons.visible = true
	options.visible = false
	instructions.visible = false
	credits.visible = false
	levels.visible = false
	
func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_options_pressed() -> void:
	print("options pressed")
	main_buttons.visible = false
	options.visible = true

func _on_credits_pressed() -> void:
	print("credits pressed")
	main_buttons.visible = false
	credits.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_exit_options_pressed() -> void:
	_ready()


func _on_instructions_pressed() -> void:
	print("instructions pressed")
	main_buttons.visible = false
	instructions.visible = true
	

func _on_exit_instructions_pressed() -> void:
	_ready()


func _on_exit_credits_pressed() -> void:
	_ready()


func _on_level_select_pressed() -> void:
	print("level select pressed")
	main_buttons.visible = false
	levels.visible = true



func _on_exit_level_select_pressed() -> void:
	_ready()


func _on_level_one_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")



func _on_level_two_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
