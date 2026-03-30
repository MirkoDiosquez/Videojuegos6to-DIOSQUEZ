extends CharacterBody2D
const velocidad_Inicial = 300.0
const aumento_Velocidad = 5.0
const velocidad_Maxima = 400.0
var velocidad_actual := velocidad_Inicial

func _ready() -> void:
	velocity = Vector2(velocidad_actual, -velocidad_actual).normalized() * velocidad_actual

func _physics_process(delta: float) -> void:
	var colision = move_and_collide(velocity * delta)
	if colision:
		var golpeado = colision.get_collider()
		
		if golpeado.is_in_group("bloques"):
			golpeado.recibir_golpe()
			_aumentar_velocidad()
			_verificar_victoria()
		
		velocity = velocity.bounce(colision.get_normal())

	var pantalla := get_viewport_rect().size

	if position.x <= 0 or position.x >= pantalla.x:
		velocity.x *= -1

	if position.y <= 0:
		velocity.y *= -1

	if position.y >= pantalla.y:
		get_tree().call_group("game_manager", "mostrar_game_over")

func _aumentar_velocidad() -> void:
	velocidad_actual = min(velocidad_actual + AUMENTO_VELOCIDAD, VELOCIDAD_MAXIMA)
	velocity = velocity.normalized() * velocidad_actual
	
