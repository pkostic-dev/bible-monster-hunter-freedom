class_name Weapon
extends Item

enum Style {GREAT_SWORD, SWORD_AND_SHIELD, DUAL_BLADES, HAMMER, LANCE,
LIGHT_BOWGUN, HEAVY_BOWGUN}
enum ElementStatus {NONE, FIRE, WATER, THUNDER, DRAGON, PARALYSIS, POISON, SLEEP}

var style:int
var attribute:Array
var attack:int
var defense:int

func _init(_name: String, _type: int, _icon: String, _description: String, _rarity: int, _capacity: int, _value: int, _style: int, _attribute: Array, _attack: int, _defense: int = 0) -> void:
	super(_name, _type, _icon, _description, _rarity, _capacity, _value)
	style = _style
	attribute = _attribute
	attack = _attack
	defense = _defense
	
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
	stats += "attribute" + e + ElementStatus.keys()[attribute[0]] + c
	stats += "attack" + e + str(attack) + c
	stats += "defense" + e + str(defense)
	
	return stats + "]"
