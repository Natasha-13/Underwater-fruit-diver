extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		if Global.score >= 10:
			print("You Won!")
			# load a new level
			TransitionScreen.transition_to("res://scenes/level_2.tscn")
		if Global.score <= 5:
			print("you lost")
			TransitionScreen.transition_to("res://scenes/you_lost!.tscn")
		
	
