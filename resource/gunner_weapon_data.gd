extends WeaponData
class_name GunnerWeaponData

enum Reload {
	VERY_SLOW,
	SLOW,
	NORMAL,
	FAST,
	VERY_FAST,
}

enum Recoil {
	LIGHT,
	MODERATE,
}

enum WeaponType {
	LIGHT_BOWGUN,
	HEAVY_BOWGUN,
}

@export var weapon_type:WeaponType
@export var reload:Reload
@export var recoil:int
@export var usable_ammo:Array[AmmoData]
