extends Resource
class_name QuestData

enum QuestGiver {
	VILLAGE,
	GUILD,
}

enum Stability {
	STABLE,
	UNSTABLE,
}

@export var quest_giver:QuestGiver
@export var stars:int
@export var number:int
@export var name:String
@export var objective:String # resource ?
@export var location:LocationData
@export var reward:int
@export var contract_fee:int
@export var time_limit:int
@export var environment:Stability
@export var hr_points:int
@export var requirement:String # resource ?
@export var monsters:Array[MonsterData]
@export var requestor:String
@export_multiline var description:String
@export var cutscenes:Array[LocationData]
@export var boulders:Array[LocationData]
