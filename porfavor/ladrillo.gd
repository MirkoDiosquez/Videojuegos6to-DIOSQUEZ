extends CharacterBody2D
 
func _ready() -> void:
	add_to_group("bloques")
 
func recibir_golpe() -> void:
	queue_free()
 
