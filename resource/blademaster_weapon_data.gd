extends WeaponData
class_name BlademasterWeaponData

## Resource for blademaster weapons.

enum WeaponType {
	SWORD_AND_SHIELD,
	GREATSWORD,
	HAMMER,
}

@export var weapon_type:WeaponType
@export var sharpness:SharpnessData
@export var element:ElementData
@export var status:StatusData
@export var upgrades:Array[UpgradeData]
