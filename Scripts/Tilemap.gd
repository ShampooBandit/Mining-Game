extends TileMapLayer

var tile_health := {}

@onready var tile_selection := $SelectedTile

@export var ore_manager: Node2D

func damage_tile(_player_position: Vector2, _position: Vector2, _damage: int, _range: int) -> void:
	var player_pos := local_to_map(_player_position)
	var tile_pos := local_to_map(_position)
	var tile := get_cell_tile_data(tile_pos)
	
	tile_selection.position = tile_pos * 16
	
	if player_pos.distance_to(tile_pos) <= _range and tile != null:
		tile_health[tile_pos] = 0
		#tile_health[tile_pos] = tile_health.get(tile_pos, 10 + (10 * tile.terrain)) - _damage
		if tile_health[tile_pos] <= 0:
			tile_health.erase(tile_pos)
			set_cells_terrain_connect([tile_pos], 0, -1)
			ore_manager.drop_ore(tile.terrain, tile_pos * 16)
