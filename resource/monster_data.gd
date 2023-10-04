extends Resource
class_name MonsterData


enum SizeCategory {
	SMALL,
	BIG,
}

enum MonsterClass {
	WYVERN,
}

@export var name:String
@export var icon:Texture2D
@export_multiline var description:String
@export var size_category:SizeCategory
@export var monster_class:MonsterClass
@export var elements:Array[ElementData]
@export var ailments:Array[StatusData]
@export var elemental_weaknesses:Array[ElementalWeaknessData]
@export var habitat:Array[LocationData]
@export var size:float
