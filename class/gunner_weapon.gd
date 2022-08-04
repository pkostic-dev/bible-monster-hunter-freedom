class_name GunnerWeapon
extends Weapon

enum Reload {VERY_SLOW, SLOW, NORMAL, FAST, VERY_FAST}
enum Recoil {LIGHT, MODERATE}

export(Reload) var reload
export(Recoil) var recoil

# For gunner weapons attack is min_attack and max_attack is always +60 attack (upgrades)

func _init(_weapon_name: String, _style: int, _attribute: int,
		_rarity: int, _attack: int, _defense: int, _reload: int, _recoil: int).(
		_weapon_name, _style, _attribute, _rarity, _attack, _defense) -> void:
	reload = _reload
	recoil = _recoil

func getStats() -> String:
	var stats = .getStats()
	var c = ", "
	var e = " = "
	
	stats.erase(stats.length() - 1, 1)
	
	stats += c
	stats += "reload" + e + Reload.keys()[reload] + c
	stats += "recoil" + e + Recoil.keys()[recoil]
	
	return stats + "]"
