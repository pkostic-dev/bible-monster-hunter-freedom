extends Node

var ItemList = preload("res://scene/ItemList.tscn")
var Item = preload("res://scene/Item.tscn")

func _ready() -> void:
	var ui_test = ItemList.instance()
	add_child(ui_test)
	
	var combinable_items = Utility.combinable_items_from_json("res://data/combinable_items.json")
	print(combinable_items)
	for i in combinable_items:
		var uit = Item.instance()
		uit.get_node("%Name").text = i.name
		uit.get_node("%Capacity").text = "Capacity : " + str(i.capacity)
		uit.get_node("%Description").text = i.description
		uit.get_node("%Icon").texture = load("res://data/icons/" + i.icon)
		uit.get_node("%Rarity").text = "Rare " + str(i.rarity)
		uit.get_node("%Value").text = str(i.value) + "z"
	
		ui_test.get_node("ScrollContainer/VBoxContainer").add_child(uit)
