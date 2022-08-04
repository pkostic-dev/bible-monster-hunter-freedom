class_name Item

enum Type {CONSUMABLE, GATHERING, HUNTING, SUPPLY, ACCOUNT, AMMO, PLANT,
MUSHROOM, SEED, MINERAL, FISH, INSECT, SAC, BONE, MATERIAL, UNIQUE, BOOK,
TREASURE, WEAPON, ARMOR}

export(Type) var type
export(int) var rarity
export(int) var capacity
export(int) var value # sell value in zenny
# info

func _init(_type: int, _rarity: int = 1, _capacity: int = 1, _value: int = 0) -> void:
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
