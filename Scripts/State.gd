class_name State extends Node

var animation_finished: bool = false

signal finished(_next_state_path: String, _data: Dictionary)

func handle_input(_event: InputEvent):
	pass
	
func update(_delta: float) -> void:
	pass
	
func physics_update(_delta: float) -> void:
	pass
	
func enter(_previous_state_path: String, _data := {}) -> void:
	pass
	
func exit() -> void:
	pass
