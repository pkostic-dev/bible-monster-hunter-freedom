class_name Item


enum Type {CONSUMABLE, GATHERING, HUNTING, SUPPLY, ACCOUNT, AMMO, PLANT,
MUSHROOM, SEED, MINERAL, FISH, INSECT, SAC, BONE, MATERIAL, UNIQUE, BOOK,
TREASURE, WEAPON, ARMOR}

var name:String
var type:int
var icon:String
var description:String
var rarity:int
var capacity:int
var value:int # Sell value in zenny


func _init(_name: String, _type: int, _icon: String = "", _description: String = "", _rarity: int = 1, _capacity: int = 1, _value: int = 0) -> void:
	name = _name
	type = _type
	icon = _icon
	description = _description
	rarity = _rarity
	capacity = _capacity
	value = _value


func get_stats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = "["
	
	stats += "name" + e + name + c
	stats += "type" + e + Type.keys()[type] + c
	# icon and description omitted for readability
	stats += "rarity" + e + "Rare " + str(rarity) + c
	stats += "capacity" + e + str(capacity) + c
	stats += "value" + e + str(value)
	
	return stats + "]"
