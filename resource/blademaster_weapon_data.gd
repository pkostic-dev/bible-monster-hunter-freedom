extends WeaponData
class_name BlademasterWeaponData

## Resource for blademaster weapons.

enum WeaponType {
	GREATSWORD,
	SWORD_AND_SHIELD,
	DUAL_BLADES,
	HAMMER,
	LANCE,
}

@export var weapon_type:WeaponType
@export var sharpness:SharpnessData
@export var element:ElementData
@export var status:StatusData
@export var upgrades:Array[UpgradeData]
