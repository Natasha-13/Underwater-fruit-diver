extends Camera2D

@export var default_shake_strength: float = 15.0
@export var shake_fade: float = 10.0

var shake_strength: float = 0.0
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	rng.randomize()
	add_to_group("camera")

func _process(delta: float) -> void:
	if shake_strength > 0:
		# Decay the shake strength over time
		shake_strength = lerpf(shake_strength, 0.0, shake_fade * delta)
		
		# Apply a random offset within the current strength bound
		offset = Vector2(
			rng.randf_range(-shake_strength, shake_strength),
			rng.randf_range(-shake_strength, shake_strength)
		)
	else:
		offset = Vector2.ZERO

func apply_shake(strength: float = default_shake_strength) -> void:
	shake_strength = strength
