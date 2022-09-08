extends Control

var ItemsList = preload("res://scene/ItemsList.tscn")
var Item = preload("res://scene/Item.tscn")
@onready var tab_container = $TabContainer

func _ready() -> void:
	var items_list = ItemsList.instantiate()
	tab_container.add_child(items_list)
	
	var combinable_items = Utility.combinable_items_from_json("res://data/combinable_items.json")
	print(combinable_items)
	for i in combinable_items:
		var _item = Item.instantiate()
		_item.get_node("%Name").text = i.name
		_item.get_node("%Capacity").text = "Capacity : " + str(i.capacity)
		_item.get_node("%Description").text = i.description
		_item.get_node("%Icon").texture = load("res://data/icons/" + i.icon)
		_item.get_node("%Rarity").text = "Rare " + str(i.rarity)
		_item.get_node("%Value").text = str(i.value) + "z"
	
		items_list.get_node("ScrollContainer/VBoxContainer").add_child(_item)
