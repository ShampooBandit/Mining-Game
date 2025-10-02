class_name Player extends CharacterBody2D

@export var speed := 500.0
@export var gravity := 4000.0
@export var jump_impulse := 1800.0

@export var mining_power := 1
@export var mining_range := 5

#@onready var animation_player := %AnimationPlayer
@onready var animation_player := $AnimatedSprite2D
@export var rect : ColorRect
@export var tilemap : TileMapLayer

func _process(_delta: float) -> void:
	var mousePos := get_viewport().get_mouse_position()
	
	rect.position = mousePos

	if Input.is_action_pressed("punch"):
		tilemap.damage_tile(position, mousePos, mining_power, mining_range)
