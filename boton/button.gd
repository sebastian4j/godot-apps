extends Button

func _notification(what):
	match what:
		NOTIFICATION_READY:
			print("This is the same as overriding _ready()...")
		NOTIFICATION_PROCESS:
			print("This is the same as overriding _process()...")
