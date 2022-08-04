class_name Weapon

enum Style {GREAT_SWORD, SWORD_AND_SHIELD, DUAL_BLADES, HAMMER, LANCE,
LIGHT_BOWGUN, HEAVY_BOWGUN}
enum ElementStatus {NONE, FIRE, WATER, THUNDER, DRAGON, PARALYSIS, POISON, SLEEP}

export(String) var weapon_name
export(Style) var style
export(ElementStatus) var attribute
export(int) var rarity
export(int) var attack
export(int) var defense

func _init(_weapon_name:String, _style:int, _attribute:int, _rarity:int,
_attack:int, _defense:int) -> void:
	weapon_name = _weapon_name
	style = _style
	attribute = _attribute
	rarity = _rarity
	attack = _attack
	defense = _defense
	
func getStats() -> String:
	var c = ", "
	var e = " = "
	var stats = "["
	
	stats += "weapon_name" + e + weapon_name + c
	stats += "style" + e + Style.keys()[style] + c
	stats += "attribute" + e + ElementStatus.keys()[attribute] + c
	stats += "rarity" + e + "Rare " + str(rarity) + c
	stats += "attack" + e + str(attack) + c
	stats += "defense" + e + str(defense)
	
	return stats + "]"
