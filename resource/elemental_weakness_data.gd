extends Resource
class_name ElementalWeaknessData

enum Element {
	NONE,
	FIRE,
	WATER,
	THUNDER,
	ICE,
	DRAGON,
}

@export var element:Element
@export var effectiveness:int
