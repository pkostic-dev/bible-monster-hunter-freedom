extends Node


var current_scene:Node = null


func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	print("Current scene : " + str(current_scene))


func json_to_dict(path) -> Dictionary:
	if not FileAccess.file_exists(path):
		printerr("File doesn't exist at " + path)
		return {}
	var file = FileAccess.open(path, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	if data.is_empty():
		printerr("File is empty")
		return {}
	return data


func combinable_items_from_json(path) -> Array:
	var data = Utility.json_to_dict(path)
	
	var type = data.keys()[0]
	var items = data.get(type)
	
	var items_list = []
	
	for item in items:
		var item_dict = items.get(item)
		var _type = Item.Type.get(type.to_upper())
		var _name = item
		var _icon = item_dict.get("icon")
		var _desc = item_dict.get("description")
		var _rrty = item_dict.get("rarity")
		var _capc = item_dict.get("capacity")
		var _vlue = item_dict.get("value")
		
		var _succ = item_dict.get("success_rate")
		var _minq = item_dict.get("min_quantity")
		var _maxq = item_dict.get("max_quantity")
		var _comb = item_dict.get("combine_recipes")
		var _shop = item_dict.get("shops")
		var _alch = item_dict.get("requires_alchemy")
		
		var object = InventoryItem.new(_name, _type, _icon, _desc, _rrty, _capc, _vlue) # , _succ, _minq, _maxq, _comb, _shop, _alch
		items_list.append(object)
		
	return items_list


func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)


func _deferred_goto_scene(path):
	# Check if scene exists
	if not FileAccess.file_exists(path):
		return
	
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instantiate()

	# Add it to the active scene, as child of root.
	get_tree().get_root().add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().set_current_scene(current_scene)

