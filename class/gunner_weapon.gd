class_name GunnerWeapon
extends Weapon

enum Reload {VERY_SLOW, SLOW, NORMAL, FAST, VERY_FAST}
enum Recoil {LIGHT, MODERATE}

var reload
var recoil

# For gunner weapons attack is min_attack and max_attack is always +60 attack (upgrades)

func _init(_name: String, _type: int, _icon: String, _description: String, _rarity: int, _capacity: int, _value: int, _weapon_name: String, _style: int, _attribute: int, _attack: int, _defense: int, _reload: int, _recoil: int) -> void:
	super(_name, _type, _icon, _description, _rarity, _capacity, _value, _style, _attribute, _attack, _defense)
	reload = _reload
	recoil = _recoil

func get_stats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = "["
	
	stats += "name" + e + name + c
	stats += "type" + e + Type.keys()[type] + c
	# icon and description omitted for readability
	stats += "rarity" + e + "Rare " + str(rarity) + c
	# stats += "capacity" + e + str(capacity) + c # useless info
	stats += "value" + e + str(value) + c
	stats += "style" + e + Style.keys()[style] + c
	stats += "attribute" + e + ElementStatus.keys()[attribute] + c
	stats += "attack" + e + str(attack) + c
	stats += "defense" + e + str(defense) + c
	stats += "reload" + e + Reload.keys()[reload] + c
	stats += "recoil" + e + Recoil.keys()[recoil]
	
	return stats + "]"
