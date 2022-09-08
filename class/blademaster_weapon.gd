class_name BlademasterWeapon
extends Weapon

enum Sharpness {YELLOW, GREEN, BLUE, WHITE}

var sharpness

func _init(_name: String, _type: int, _icon: String, _description: String, _rarity: int, _capacity: int, _value: int, _style: int, _attribute: int, _attack: int, _defense: int, _sharpness: int) -> void:
	super(_name, _type, _icon, _description, _rarity, _capacity, _value, _style, _attribute, _attack, _defense)
	sharpness = _sharpness

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
	stats += "sharpness" + e + Sharpness.keys()[sharpness]
	
	return stats + "]"
