extends Node

var Menu = preload("res://scene/Menu.tscn")

func _ready() -> void:
	add_child(Menu.instantiate())
