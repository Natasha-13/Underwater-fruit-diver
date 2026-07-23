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
