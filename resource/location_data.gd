extends Resource
class_name LocationData

## Resource for storing locations. WIP

enum Type {
	AREA,
	BUILDING,
	MINING,
	BUG_CATCHING,
	FISHING,
}

@export var name:String
@export var type:Type
