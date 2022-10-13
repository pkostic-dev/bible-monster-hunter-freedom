extends Control

func _ready() -> void:
	pass


func _on_weapons_pressed():
	Utility.goto_scene(Scenes.WeaponsScene)


func _on_armors_pressed():
	Utility.goto_scene(Scenes.ArmorsScene)


func _on_items_pressed():
	Utility.goto_scene(Scenes.ItemsScene)


func _on_monsters_pressed():
	Utility.goto_scene(Scenes.MonstersScene)


func _on_quests_pressed():
	Utility.goto_scene(Scenes.QuestsScene)


func _on_combinations_pressed():
	Utility.goto_scene(Scenes.CombinationsScene)


func _on_locations_pressed():
	Utility.goto_scene(Scenes.LocationsScene)


func _on_farm_pressed():
	Utility.goto_scene(Scenes.FarmScene)


func _on_kitchen_pressed():
	Utility.goto_scene(Scenes.KitchenScene)
