extends RigidBody2D

export var min_speed = 150  # Minimum speed range.
export var max_speed = 250  # Maximum speed range.

func _ready():
	# lista de nombres de animación
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	# randi() % n selecciona un entero al azar entre 0 y n-1.
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
