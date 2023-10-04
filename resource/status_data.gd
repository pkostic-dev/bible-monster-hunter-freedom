extends Resource
class_name StatusData

enum Status {
	NONE,
	POISON,
	SLEEP,
	PARALYSIS,
}

@export var status:Status
@export var value:int
