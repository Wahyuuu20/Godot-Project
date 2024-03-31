extends Node2D

var NodeEnemy = preload("res://scene/enemy.tscn")
var NodeMidBos = preload("res://scene/mid_bos.tscn")
@onready var MarkerSpawnEnemy = $Spawn_Enemy
@onready var MarkerSpawnMidbos = $Spawn_MidBos/MidBoss
var movementSpeed= 10


func _ready():
	SpawnEnemy()
	Midbos()


func SpawnEnemy():
		for child in MarkerSpawnEnemy.get_children():
			var Enemy = NodeEnemy.instantiate()
			Enemy.global_position = child.global_position
			add_child(Enemy)
	
func Midbos():
	var MidBos = NodeMidBos.instantiate()
	MidBos.global_position = MarkerSpawnMidbos.global_position
	add_child(MidBos)	


func Death():
	queue_free()


