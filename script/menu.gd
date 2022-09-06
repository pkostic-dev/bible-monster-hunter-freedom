extends Control

var test_scene = "res://scene/Test.tscn"

func _on_ItemsBtn_pressed() -> void:
	Utility.goto_scene(test_scene)
