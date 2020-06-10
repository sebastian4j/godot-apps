extends Label

var accum = 0
var alerts = 0
var s
# var scene1 = load("res://panel.tscn") # Will load when the script is instanced.
# var scene2 = preload("res://panel.tscn") # Will load when parsing the script.
# var node = scene1.instance()
# add_child(node)

func _ready():
	s = Sprite.new()
	add_child(s)
	add_to_group("base")
	
# el procesamiento en tiempo de espera (idle)
# depende de los fps, varía en el tiempo y dispositivo
# delta es el tiempo transcurrido desde la llamada anterior
func _process(delta):
	accum += delta
# 'text' is a built-in label property.
	text = str(accum) + "\n delta: " + str(delta) + "\n alerta grupo: " + str(alerts)
	
func alerta():
	# obtiene todos los elementos que estan en el grupo base
	if s != null:
		# Immediately removes the node from the scene and frees it.
	#	s.free()
	# Removes the node from the scene and frees it when it becomes safe to do so.
		s.queue_free()
		s = null
	var enBase = get_tree().get_nodes_in_group("base")
	alerts+=1
