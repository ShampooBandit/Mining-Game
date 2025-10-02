class_name Inventory extends Node

var resources  := {}
var weight     := 0
var max_weight := 50

func _on_pickup_range_body_entered(_ore: Node2D) -> void:
	print("Ore in range!")
	if weight + _ore.weight <= max_weight:
		resources[_ore.name] = resources.get(_ore.name, 0) + 1
		weight += _ore.weight
		_ore.queue_free()
