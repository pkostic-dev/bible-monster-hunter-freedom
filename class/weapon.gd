class_name Weapon
extends Item

enum Style {GREAT_SWORD, SWORD_AND_SHIELD, DUAL_BLADES, HAMMER, LANCE,
LIGHT_BOWGUN, HEAVY_BOWGUN}
enum ElementStatus {NONE, FIRE, WATER, THUNDER, DRAGON, PARALYSIS, POISON, SLEEP}

export(Style) var style
export(ElementStatus) var attribute
export(int) var attack
export(int) var defense

func _init(_name: String, _type: int, _icon: String, _description: String, _rarity: int, _capacity: int, _value: int,
_style: int, _attribute: int = ElementStatus.NONE,
_attack: int = 1, _defense: int = 0).(_name, _type, _icon, _description, _rarity, _capacity, _value) -> void:
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
	stats += "style" + e + Style.keys()[style] + c
	stats += "attribute" + e + ElementStatus.keys()[attribute] + c
	stats += "attack" + e + str(attack) + c
	stats += "defense" + e + str(defense)
	
	return stats + "]"
