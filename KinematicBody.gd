extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
const speed = 250

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var move_x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	move_and_slide(Vector2(move_x * speed, 0))
