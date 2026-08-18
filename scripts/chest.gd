extends Area2D

@onready var closed: Sprite2D = $Closed
@onready var opened: Sprite2D = $Opened


func _ready():
	closed.visible = true
	opened.visible = false

func _on_mouse_entered() -> void:
	print("opened chest")
	closed.visible = false
	opened.visible = true

func spawn_item() -> void:
	var item = 
