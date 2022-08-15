class_name Item


enum Type {CONSUMABLE, GATHERING, HUNTING, SUPPLY, ACCOUNT, AMMO, PLANT,
MUSHROOM, SEED, MINERAL, FISH, INSECT, SAC, BONE, MATERIAL, UNIQUE, BOOK,
TREASURE, WEAPON, ARMOR}


var type:int
var name:String
var icon:String
var description:String
var rarity:int
var capacity:int
var value:int # Sell value in zenny


func _init(
_name: String,_type: int, _icon: String = "", _description: String = "",
_rarity: int = 1, _capacity: int = 1, _value: int = 0) -> void:
	type = _type
	name = _name
	icon = _icon
	description = _description
	rarity = _rarity
	capacity = _capacity
	value = _value


func load_from_json(path) -> void:
	var file = File.new()
	if not file.file_exists(path, File.READ):
		printerr("File doesn't exist at " + path)
		return
	file.open(path, File.READ)
	var data = parse_json(file.get_as_text())
	print(data)


func getStats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = "["
	
	stats += "type" + e + Type.keys()[type] + c
	stats += "name" + e + name + c
	# icon and description omitted for readability
	stats += "rarity" + e + "Rare " + str(rarity) + c
	stats += "capacity" + e + str(capacity) + c
	stats += "value" + e + str(value)
	
	return stats + "]"
