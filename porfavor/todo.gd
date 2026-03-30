extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _verificar_victoria() -> void:
	var bloques_restantes = get_tree().get_nodes_in_group("bloques").size()
	if bloques_restantes == 0:
		get_tree().call_group("game_manager", "mostrar_you_win")
