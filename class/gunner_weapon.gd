class_name GunnerWeapon
extends Weapon

enum Reload {VERY_SLOW, SLOW, NORMAL, FAST, VERY_FAST}
enum Recoil {LIGHT, MODERATE}

export(Reload) var reload
export(Recoil) var recoil

# For gunner weapons attack is min_attack and max_attack is always +60 attack (upgrades)

func _init(_name: String, _type: int, _icon: String, _description: String, _rarity: int,
_capacity: int, _value: int, _weapon_name: String,
_style: int, _attribute: int, _attack: int, _defense: int,
_reload: int, _recoil: int).(_name, _type, _icon, _description, _rarity, _capacity,
_value, _style, _attribute, _attack, _defense) -> void:
	reload = _reload
	recoil = _recoil

func get_stats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = .get_stats()
	
	stats.erase(stats.length() - 1, 1)
	
	stats += c
	stats += "reload" + e + Reload.keys()[reload] + c
	stats += "recoil" + e + Recoil.keys()[recoil]
	
	return stats + "]"
