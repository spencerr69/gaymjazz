extends Node2D

@export var key = ""

@export var pos = 0

func _ready():
	set_pos()

func set_pos():
	var x
	match key:
		"q":
			x = -150
		"w":
			x = -50
		"e":
			x = 50
		"r":
			x = 150
	self.position = Vector2(x, -pos)
	pass
