extends GPUParticles2D


func _ready() -> void:
	emitting = true
	self.modulate = Color(randf(),randf(),randf())
	finished.connect(queue_free)
