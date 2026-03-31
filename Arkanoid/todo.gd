extends Node2D

func _ready() -> void:
	pass # Replace with functi
func _process(delta: float) -> void:
	pass

func verificarVictoria() -> void:
	var bloques_restantes = get_tree().get_nodes_in_group("bloques").size()
	if bloques_restantes <= 1: get_tree().call_group("game_manager", "mostrarYouWin")
