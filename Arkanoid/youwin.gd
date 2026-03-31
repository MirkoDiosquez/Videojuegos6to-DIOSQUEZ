extends CanvasLayer
 
func _ready() -> void:
	visible = false
 
func mostrarYouWin() -> void:
	visible = true
	get_tree().paused = true
 
func _on_reiniciar_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_salir_pressed() -> void:
	get_tree().quit()
