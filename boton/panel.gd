extends Panel

# se llama cuando el nodo esta visible.
func _ready():
	get_node("button").connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
	get_node("label").text = "Hello!"
	get_tree().call_group("base", "alerta")
	
func _enter_tree():
	# When the node enters the Scene Tree, it becomes active
	# and  this function is called. Children nodes have not entered
	# the active scene yet. In general, it's better to use _ready()
	# for most cases.
	pass

func _exit_tree():
	# When the node exits the Scene Tree, this function is called.
	# Children nodes have all exited the Scene Tree at this point
	# and all became inactive.
	pass

func _process(delta):
	# This function is called every frame.
	pass

func _physics_process(delta):
	# This is called every physics frame.
	pass
