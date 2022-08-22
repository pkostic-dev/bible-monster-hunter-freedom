extends Node


func _ready() -> void:
	var combinable_items = load_from_json("res://data/combinable_items.json", CombinableItem)
	print(combinable_items)

func load_from_json(path, object_type) -> Array:
	var file = File.new()
	if not file.file_exists(path):
		printerr("File doesn't exist at " + path)
		return []
	file.open(path, File.READ)
	var data = parse_json(file.get_as_text())
	if data.empty():
		printerr("File is empty")
		return []
	
	var type = data.keys()[0]
	var items = data.get(type)
	
	var items_list = []
	
	for item in items:
		var item_dict = data.get(type).get(item)
		var _type = Item.Type.get(type.to_upper())
		var _name = item
		var _icon = item_dict.get("icon")
		var object = object_type.new(_name, _type, _icon)
		items_list.append(object)
		
	return items_list
