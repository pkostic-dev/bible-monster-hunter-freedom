extends Resource
class_name MapData

enum Rank {
	LOW,
	HIGH,
	G_RANK
}

@export var name:String
@export var rank:Rank
@export var map:Texture2D
@export var resources:Array[ResourceData]

