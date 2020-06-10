extends Node2D

func _ready():
	$Timer.connect("timeout", self, "cambiar_sprite")
	$Timer.start()

func cambiar_sprite():
	$Sprite.visible = !$Sprite.visible
