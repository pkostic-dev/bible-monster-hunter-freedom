extends Control


func _on_weapons_pressed():
	Utility.goto_scene(Scenes.Weapons)


func _on_armors_pressed():
	Utility.goto_scene(Scenes.Armors)


func _on_items_pressed():
	Utility.goto_scene(Scenes.Items)


func _on_monsters_pressed():
	Utility.goto_scene(Scenes.Monsters)


func _on_quests_pressed():
	Utility.goto_scene(Scenes.Quests)


func _on_combinations_pressed():
	Utility.goto_scene(Scenes.Combinations)


func _on_locations_pressed():
	Utility.goto_scene(Scenes.Locations)


func _on_farm_pressed():
	Utility.goto_scene(Scenes.Farm)


func _on_kitchen_pressed():
	Utility.goto_scene(Scenes.Kitchen)
