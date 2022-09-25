class_name Quest

enum Type {VILLAGE, GUILD}
enum EnvironmentType {STABLE, UNSTABLE}

var type:int
var stars:int
var number:int
var name:String
var objective:String
var location:String
var reward:int
var contract_fee:int
var time_limit:int
var environment:int
var hr_points:int
var requirement:String
var monsters:Array[String]
var requestor:String
var description:String
var cutscenes:Array[String] # Area 
var boulders:Array[Array] # (area, (to) area)


func _init(_type:int, _stars:int, _number:int, _name:String) -> void:
	type = _type
	stars = _stars
	number = _number
	name = _name


