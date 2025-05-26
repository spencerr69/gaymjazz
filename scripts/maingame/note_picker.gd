extends Node2D

@export var key = ""

var is_pressed = false

func _input(event):
	if event.is_action_pressed(key+"_picker"):
		is_pressed = true
	elif event.is_action_released(key+"_picker"):
		is_pressed = false
	pass
	
func _process(_delta):
	if is_pressed:
		self.scale = Vector2(0.9, 0.9)
	else:
		self.scale = Vector2(1, 1)
	pass
