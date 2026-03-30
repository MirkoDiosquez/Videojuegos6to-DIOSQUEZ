extends CharacterBody2D
const velocidad_Movimiento = 350
const min_x = 30
const max_x = 470

func _physics_process(delta: float) -> void:
	var direccion := 0.0
	if Input.is_action_pressed("ui_left"):
		direccion = -1.5
	if Input.is_action_pressed("ui_right"):
		direccion = 1.5
	velocity.x = direccion * velocidad_Movimiento
	move_and_slide()
	var pantalla := get_viewport_rect().size
	position.x = clamp(position.x,min_x,max_x )
