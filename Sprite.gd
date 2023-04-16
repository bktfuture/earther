extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var sprite = get_node("Sprite")

func _ready():
	sprite.visible = false


func _show():
	sprite.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
