extends Resource
class_name ItemData

# TODO Extend into InventoryItem which extends into CarvableItem, AmmoItem, ConsumableItem etc.

## Base resource for all items, including weapons and armor.

## Contains base informations for the item. This resource also contains all information about the obtainability of the item.

enum ItemType {
	INVENTORY,
	WEAPON,
	ARMOR,
}

enum CookingMethod {
	UNCOOKABLE,
}

@export var name:String
@export var type:ItemType
@export var icon:Texture2D
@export_multiline var description:String
@export_range(1, 7) var rarity:int
@export_range(1, 99) var capacity:int
@export_range(0, 50_000) var value:int

@export_group("Misc.")
@export var shops:Array[ShopData]
@export var monsters:Array[MonsterData]
@export var locations:Array[LocationData]
@export var quests:Array[QuestData]
@export var trades:Array[TradeData]
@export var cooking_method:CookingMethod = CookingMethod.UNCOOKABLE

@export_subgroup("Combine")
@export var success_rate:int
@export var min_quantity:int
@export var max_quantity:int
@export var combine_recipes:CombineData
@export var requires_alchemy:bool


