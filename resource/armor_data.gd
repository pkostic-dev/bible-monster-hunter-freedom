extends ItemData
class_name ArmorData

enum Rank {
	LOW,
	HIGH,
	G_RANK,
}

enum ArmorType {
	BLADEMASTER,
	GUNNER,
}

enum Slot {
	HELMET,
	CHESTPLATE,
	ARMGUARDS,
	WAIST,
	LEGGINGS,
}

@export var rank:Rank
@export var armor_type:ArmorType
@export var slot:Slot
@export var skills:Array[SkillData]
@export_range(1, 1000) var defense:int
@export var elements:Array[ElementData]
