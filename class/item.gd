class_name Item


enum Type {CONSUMABLE, GATHERING, HUNTING, SUPPLY, ACCOUNT, AMMO, PLANT,
MUSHROOM, SEED, MINERAL, FISH, INSECT, SAC, BONE, MATERIAL, UNIQUE, BOOK,
TREASURE, WEAPON, ARMOR}


var icon:String
var description:String
var type:int
var rarity:int
var capacity:int
var value:int # Sell value in zenny


func _init(_icon: String, _type: int, _rarity: int = 1, _capacity: int = 1, _value: int = 0) -> void:
	type = _type
	rarity = _rarity
	capacity = _capacity
	value = _value

func getStats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = "["
	
	stats += "type" + e + Type.keys()[type] + c
	stats += "rarity" + e + "Rare " + str(rarity) + c
	stats += "capacity" + e + str(capacity) + c
	stats += "value" + e + str(value)
	
	return stats + "]"
