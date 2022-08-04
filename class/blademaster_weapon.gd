class_name BlademasterWeapon
extends Weapon

enum Sharpness {YELLOW, GREEN, BLUE, WHITE}

export(Sharpness) var sharpness

func _init(_type: int, _rarity: int, _capacity: int, _value: int,
_weapon_name: String, _style: int, _attribute: int, _attack: int,
_defense: int, _sharpness: int).(_type, _rarity, _capacity, _value,
_weapon_name, _style, _attribute, _attack, _defense) -> void:
	sharpness = _sharpness

func getStats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = .getStats()
	
	stats.erase(stats.length() - 1, 1)
	
	stats += c
	stats += "sharpness" + e + Sharpness.keys()[sharpness]
	
	return stats + "]"
