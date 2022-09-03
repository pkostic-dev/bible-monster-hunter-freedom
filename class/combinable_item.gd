class_name CombinableItem
extends Item

var success_rate:float
var min_quantity:int
var max_quantity:int
# Minimum and maximum quantity produced
var combine_recipes:Array 
# Multiple recipes possible
# One recipe : Material A, Material B (strings)
var shops:Array
# Multiple shops possible
# One shop : Shop Name, Price (string, int)
var requires_alchemy:bool

func _init(_name: String, _type: int, _icon: String = "", _description: String = "", _rarity: int = 1, _capacity: int = 1, _value: int = 0, _success_rate: float = 0.0, _min_quantity: int = 1, _max_quantity: int = 1, _combine_recipes: Array = [], _shops: Array = [], _requires_alchemy:bool = false).(_name, _type, _icon, _description, _rarity, _capacity, _value) -> void:
	success_rate = _success_rate
	min_quantity = _min_quantity
	max_quantity = _max_quantity
	combine_recipes = _combine_recipes
	shops = _shops
	requires_alchemy = _requires_alchemy
	
func get_stats() -> String:
	var c = ", "
	var e = " = "
	
	var stats = "["
	
	stats += "name" + e + name + c
	stats += "type" + e + Type.keys()[type] + c
	# icon and description omitted for readability
	#stats += "icon" + e + icon + c
	#stats += "description" + e + description + c
	stats += "rarity" + e + "Rare " + str(rarity) + c
	stats += "capacity" + e + str(capacity) + c
	stats += "value" + e + str(value) + c
	
	stats += "success_rate" + e + str(success_rate) + c
	stats += "min_quantity" + e + str(min_quantity) + c
	stats += "max_quantity" + e + str(max_quantity) + c
	#stats += "combine_recipes" + e + str(value) + c
	#stats += "shops" + e + str(value) + c
	stats += "requires_alchemy" + e + str(requires_alchemy)
	
	return stats + "]"
