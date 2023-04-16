extends Area2D

var speed = 400.0

var screenSize = Vector2.ZERO

func _ready():
	screenSize = get_viewport_rect().size


func _process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
		
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
		
	position += direction * speed * delta
	
	position.x = clamp(position.x, 0, screenSize.x)
	position.y = clamp(position.y, 0, screenSize.y)
	
	
	
