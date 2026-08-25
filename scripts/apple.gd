extends Area2D


func _ready():
	visible = true


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		print("Yum!")
		Global.score += 1
		SoundManager.play_sound(preload("res://Sound/Sound effects/Eating/Eating sound 3.mp3"))
		visible = false
		queue_free()
		
