class_name InventoryItem
extends Item

enum CookingMethod {NONE, BBQ, GOURMET}

var success_rate:int
var min_quantity:int # Minimum and maximum quantity produced
var max_quantity:int
var combine_recipes:Array[Array] # One recipe : Material A, Material B (strings)
var shops:Array[Array] # One shop : Shop Name, Price (string, int)
var requires_alchemy:bool
var cooking_method:int
var monsters:Array[String]
var locations:Array[String]
var quests:Array[String]
var trades:Array[Array]

func _init(_name: String, _type: int, _icon: String = "", _description: String = "", _rarity: int = 1, _capacity: int = 1, _value: int = 0) -> void:
	super(_name, _type, _icon, _description, _rarity, _capacity, _value)
	success_rate = 100
	min_quantity = 1
	max_quantity = 1
	requires_alchemy = false
	cooking_method = CookingMethod.NONE
	
	
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
