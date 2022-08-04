extends Node


func _ready() -> void:
	var ironSword = BlademasterWeapon.new("Iron Sword", Weapon.Style.GREAT_SWORD,
	 Weapon.ElementStatus.NONE, 1, 288, 0, BlademasterWeapon.Sharpness.YELLOW)
	var crossBowGun = GunnerWeapon.new("CrossBow Gun", Weapon.Style.LIGHT_BOWGUN,
	Weapon.ElementStatus.NONE, 1, 96, 0, GunnerWeapon.Reload.NORMAL,
	GunnerWeapon.Recoil.MODERATE)
	
	print(ironSword.getStats())
	print(crossBowGun.getStats())
