extends Resource
class_name QuestData

enum QuestType {
	OPTIONAL,
	KEY,
	URGENT,
}

## If false, the quest is a village quest.
@export var guild_quest:bool
## Village quests go up to 5 stars, guild quests go up to 8 stars.
@export_range(1, 8) var stars:int
@export var quest_type:QuestType
@export var name:String
## Short description of the objective.
@export var objective:String
@export var requirements:String
## If false, the quest is in a stable environment
@export var unstable_environment:bool

@export var location:LocationData
## Time limit in minutes.
@export_range(20, 50) var time_limit:int
@export_range(0, 4800) var contract_fee:int

@export var monsters:Array[MonsterData]

@export_group("Quest Rewards", "quest")
@export_range(12, 24_000) var quest_zeni_reward:int
@export_range(0, 990) var quest_hr_points:int
@export var quest_supply_box:Array[ItemQuantityData]
@export var quest_item_rewards:Array[ItemQuantityData]
@export_subgroup("Additionnal Item Rewards", "additional")
@export_multiline var additional_condition:String
@export var additional_item_rewards:Array[ItemQuantityData]

@export_group("Flavor Text")
@export var requestor:String
@export_multiline var description:String

@export_group("Quest Notes")
@export var cutscenes:Array[LocationData]
@export var boulders:Array[LocationData]
