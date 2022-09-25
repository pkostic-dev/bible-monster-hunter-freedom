class_name Monster

enum MonsterSize {SMALL, BIG}
enum MonsterClass {WYVERN, BIRD_WYVERN} #TODO : add the rest

var name:String
var icon:String
var description:String
var monster_size:int # MonsterSize
var monster_class:int # MonsterClass
var elements:Array[int]
var ailments:Array[int]
var weaknesses:Array[Array] # (element, effectiveness)
var habitat:Array[String]
# min_size, max_size, silver_crown_size, gold_crown_size


func _init(_name:String, _icon:String, _description:String, _monster_size:int, _monster_class:int) -> void:
	name = _name
	icon = _icon
	description = _description
	monster_size = _monster_size
	monster_class = _monster_class
	

