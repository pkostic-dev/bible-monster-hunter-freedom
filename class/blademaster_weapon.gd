class_name BlademasterWeapon
extends Weapon

enum Sharpness {YELLOW, GREEN, BLUE, WHITE}

export(Sharpness) var sharpness

func _init(_weapon_name:String, _style:int, _attribute:int, _rarity:int,
_attack:int, _defense:int, _sharpness:int).(_weapon_name,
_style, _attribute, _rarity, _attack, _defense) -> void:
	sharpness = _sharpness

func getStats() -> String:
	var stats = .getStats()
	var c = ", "
	var e = " = "
	
	stats.erase(stats.length() - 1, 1)
	
	stats += c
	stats += "sharpness" + e + Sharpness.keys()[sharpness]
	
	return stats + "]"
