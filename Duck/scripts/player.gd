extends CharacterBody2D

var g = 10
var speed = 300

# Executa somente quando o jogo é iniciado
func _ready():
	print("Hello")
	
# Executa o código a cada frame
func _process(delta):
	if !is_on_floor():
		velocity.y += g
		
	if Input.is_action_pressed("ui_right"):
		$Sprite2D.flip_h = false
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		$Sprite2D.flip_h = true
		velocity.x = -speed
	else:
		velocity.x = 0
		
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= 300
		
	move_and_slide()
