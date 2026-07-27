extends CanvasLayer


@onready var pause_menu: Panel = $"pause menu"
@onready var pause: Button = $Pause

func _ready():
	pause_menu.visible = false
	pause.visible = true

func _on_pause_pressed() -> void:
	print("pause pressed")
	pause_menu.visible = true
	pause.visible = false


func _on_resume_pressed() -> void:
	print("resume game pressed")
	pause_menu.visible = false
	pause.visible = true


func _on_quit_pressed() -> void:
	print("quit pressed")
	get_tree().quit()


func _on_home_pressed() -> void:
	print("main menu button pressed")
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
