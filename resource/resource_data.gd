extends Resource
class_name ResourceData

enum Method {
	BAIT,
	BONES,
	BUGS,
	FISH,
	HERB,
	ORE,
	SEED,
	MISC,
}

@export var method:Method
@export var resource:ItemData
@export var areas:Array[int]
