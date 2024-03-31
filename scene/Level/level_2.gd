extends Node2D

var NodeEnemy = preload("res://scene/enemy.tscn")
@onready var MarkerSpawnEnemy = $Spawn_Enemy
var movementSpeed= 10



func _ready():
	SpawnEnemy()


func SpawnEnemy():
		for child in MarkerSpawnEnemy.get_children():
			var Enemy = NodeEnemy.instantiate()
			Enemy.global_position = child.global_position
			add_child(Enemy)
	


func Death():
	queue_free()

