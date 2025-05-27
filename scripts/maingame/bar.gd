extends Node2D

var note_scene = preload("res://scenes/note.tscn")

var notes_data = [
	{
		"pos": 0,
		"len": 100,
		"key": "q"
	}, {
		"pos": 400,
		"len": 100,
		"key": "w"
	}, {
		"pos": 800,
		"len": 100,
		"key": "e"
	}, {
		"pos": 1200,
		"len": 100,
		"key": "r"
	}
]

var note_scale = 0.5

func _ready():
	add_notes()

func add_notes():
	for note_data in notes_data:
		var note = note_scene.instantiate()
		note.pos = int(note_data.pos)*note_scale
		note.key = note_data.key
		add_child(note)
		
	pass
