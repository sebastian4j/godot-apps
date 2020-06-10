extends Node2D

signal my_signal
signal my_signal2(value, other_value)

func _ready():
	emit_signal("my_signal2", true, 42)
	emit_signal("my_signal")
	$Timer.connect("timeout", self, "cambiar_sprite")
	$Timer.start()

func cambiar_sprite():
	$Sprite.visible = !$Sprite.visible
