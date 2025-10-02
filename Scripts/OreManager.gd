extends Node2D

@onready var iron_ore := preload("res://Scenes/Ores/iron_ore.tscn")

func drop_ore(_type: int, _position: Vector2) -> void:
	match _type:
		2:
			instantiate_ore(iron_ore, _position)
		_:
			return
			
func instantiate_ore(_ore: Resource, _pos: Vector2) -> void:
	var new_ore := iron_ore.instantiate()
	new_ore.position = _pos
	add_child(new_ore)
