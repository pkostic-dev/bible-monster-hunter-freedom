extends Node


func _ready() -> void:
	var combinable_items = Utility.combinable_items_from_json("res://data/combinable_items.json")
	print(combinable_items)
