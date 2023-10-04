extends ItemData
class_name ArmorData

enum Rank {
	LOW,
	HIGH,
	G,
}

enum ArmorType {
	BLADEMASTER,
	GUNNER,
}

enum Slot {
	HEAD,
	BODY,
	HANDS,
	WAIST,
	LEGS,
}

@export var rank:Rank
@export var armor_type:ArmorType
@export var slot:Slot
@export var skills:Array[SkillData]
@export_range(1, 1000) var defense:int
@export var elements:Array[ElementData]
