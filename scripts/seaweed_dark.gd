extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		print("ouch!")
		Global.score -= 1
		SoundManager.play_sound(preload("res://Sound/Sound effects/Damage/Seaweed damage sound 1.mp3"), -20.0)
