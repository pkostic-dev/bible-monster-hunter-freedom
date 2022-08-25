extends Node

var Test = preload("res://scene/Test.tscn")

func _ready() -> void:
	add_child(Test.instance())
