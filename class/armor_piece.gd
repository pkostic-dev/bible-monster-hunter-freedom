class_name ArmorPiece
extends Item

enum Rank {LOW, HIGH, G}
enum ArmorType {BLADEMASTER, GUNNER}
enum Piece {HEAD, BODY, HANDS, WAIST, LEGS}

var rank:int # Low, High, G-Class
var armor_type:int # BM, G
var piece:int # Head, Body, Hands, Waist, Legs
var skills:Array # each skill is name, value
var defense:int
var fire:int
var water:int
var thunder:int
var dragon:int

func _init(_rank:int, _armor_type:int, _piece:int, _skills:Array, _defense:int, _fire:int, _water:int, _thunder:int, _dragon:int) -> void:
	rank = _rank
	armor_type = _armor_type
	piece = _piece
	skills = _skills
	defense = _defense
	fire = _fire
	water = _water
	thunder = _thunder
	dragon = _dragon
