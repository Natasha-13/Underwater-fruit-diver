extends GPUParticles2D



func _ready() -> void:
	emitting = true
	self.modulate = Color.from_hsv(randf(), 1.0, 1.0)
	finished.connect(queue_free)
