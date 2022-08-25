extends Node

var current_scene = null


func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	print(current_scene)


func json_to_dict(path) -> Dictionary:
	var file = File.new()
	if not file.file_exists(path):
		printerr("File doesn't exist at " + path)
		return {}
	file.open(path, File.READ)
	var data = parse_json(file.get_as_text())
	if data.empty():
		printerr("File is empty")
		return {}
	return data


func combinable_items_from_json(path) -> Array:
	var data = Utility.json_to_dict(path)
	
	var type = data.keys()[0]
	var items = data.get(type)
	
	var items_list = []
	
	for item in items:
		var item_dict = data.get(type).get(item)
		var _type = Item.Type.get(type.to_upper())
		var _name = item
		var _icon = item_dict.get("icon")
		var object = CombinableItem.new(_name, _type, _icon)
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
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instance()

	# Add it to the active scene, as child of root.
	get_tree().get_root().add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().set_current_scene(current_scene)
