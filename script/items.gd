extends Control


var InventoryItem = load("res://class/inventory_item.gd")
var ItemsList = preload("res://nodule/ItemsList.tscn")


func _ready() -> void:
	pass

func create_items_list():
	var items_list = ItemsList.instantiate()
	$VBoxContainer.add_child(items_list)
	
	var inventory_items = Utility.combinable_items_from_json("res://data/inventory_items.json")
	print(inventory_items)
	for i in inventory_items:
		var _item = Item.instantiate()
		_item.get_node("%Name").text = i.name
		_item.get_node("%Capacity").text = "Capacity : " + str(i.capacity)
		_item.get_node("%Description").text = i.description
		_item.get_node("%Icon").texture = load("res://data/icons/" + i.icon)
		
		var _item_rarity = _item.get_node("%Rarity")
		_item_rarity.text = "Rare " + str(i.rarity)
		match(i.rarity):
			4:
				_item_rarity.modulate = Colors.green
			5:
				_item_rarity.modulate = Colors.pink
		
		_item.get_node("%Value").text = str(i.value) + "z"
	
		items_list.get_node("ScrollContainer/VBoxContainer").add_child(_item)


func _on_button_pressed():
	Utility.goto_scene(Scenes.Menu)
