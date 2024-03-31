extends Node2D

var enemy = preload("res://scene/Test/objtest.tscn")
@onready var NodeSpawnEnemy = $Spawn
var movementSpeed = 100


func _ready():
	pass
	#SpawnEnemy()
	
func _process(delta):
	pass
	
func SpawnEnemy():
		for child in NodeSpawnEnemy.get_children():
			var Enemy = enemy.instantiate()
			Enemy.global_position = child.global_position
			add_child(Enemy)
			
func _on_area_2d_area_entered(area):
	print("test")
	


		
