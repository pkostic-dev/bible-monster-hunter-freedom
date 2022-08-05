class_name BlademasterWeapon
extends Weapon

enum Sharpness {YELLOW, GREEN, BLUE, WHITE}

export(Sharpness) var sharpness

func _init(_name: String, _type: int, _icon: String, _description: String, _rarity: int, _capacity: int, _value: int,
_style: int, _attribute: int, _attack: int,
_defense: int, _sharpness: int).(_name, _type, _icon, _description, _rarity, _capacity, _value,
_style, _attribute, _attack, _defense) -> void:
	sharpness = _sharpness

func getStats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = .getStats()
	
	stats.erase(stats.length() - 1, 1)
	
	stats += c
	stats += "sharpness" + e + Sharpness.keys()[sharpness]
	
	return stats + "]"
