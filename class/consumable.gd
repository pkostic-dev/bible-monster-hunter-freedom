class_name Consumable
extends Item

var combine_recipes:Array 
# Multiple recipes possible
# Material A, Material B
var shops:Array
# Multiple shops possible
# Shop Name, Price

func _init(
_name: String = "", _type: int = Item.Type.CONSUMABLE, _icon: String = "",_description: String = "",
_rarity: int = 1, _capacity: int = 1, _value: int = 0,
_combine_recipes: Array = [], _shops: Array = []).(_name, _type, _icon,
_description, _rarity, _capacity, _value) -> void:
	combine_recipes = _combine_recipes
	shops = _shops
