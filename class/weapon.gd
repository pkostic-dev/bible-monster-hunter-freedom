class_name Weapon
extends Item

enum Style {GREAT_SWORD, SWORD_AND_SHIELD, DUAL_BLADES, HAMMER, LANCE,
LIGHT_BOWGUN, HEAVY_BOWGUN}
enum ElementStatus {NONE, FIRE, WATER, THUNDER, DRAGON, PARALYSIS, POISON, SLEEP}

export(String) var weapon_name
export(Style) var style
export(ElementStatus) var attribute
export(int) var attack
export(int) var defense

func _init(_type: int, _rarity: int, _capacity: int, _value: int,
_weapon_name: String, _style: int, _attribute: int = ElementStatus.NONE,
_attack: int = 1, _defense: int = 0).(_type, _rarity, _capacity, _value) -> void:
	weapon_name = _weapon_name
	style = _style
	attribute = _attribute
	attack = _attack
	defense = _defense
	
func getStats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = .getStats()
	
	stats.erase(stats.length() - 1, 1)
	
	stats += c
	stats += "weapon_name" + e + weapon_name + c
	stats += "style" + e + Style.keys()[style] + c
	stats += "attribute" + e + ElementStatus.keys()[attribute] + c
	stats += "attack" + e + str(attack) + c
	stats += "defense" + e + str(defense)
	
	return stats + "]"
