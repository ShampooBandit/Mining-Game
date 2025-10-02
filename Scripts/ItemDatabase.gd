extends Node2D

var items = {}

func _ready() -> void:
	visible = false
	
	for child in get_children():
		items[child.name] = child
		
	while get_child_count() > 0:
		remove_child(get_child(0))
		

func get_item(item_name: String) -> String:
	if items.has(item_name):
		return items[item_name]
	
	return "null"
