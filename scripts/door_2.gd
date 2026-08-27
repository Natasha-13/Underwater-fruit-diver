extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		if Global.score >= 20:
			print("Your Won!")
			TransitionScreen.transition_to("res://scenes/you_won!.tscn")
			
		if Global.score <= 15:
			print("try again")
			TransitionScreen.transition_to("res://scenes/you_lost!.tscn")
