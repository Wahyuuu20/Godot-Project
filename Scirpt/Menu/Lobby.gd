extends Node2D

var NodeEnemy = preload("res://scene/enemy.tscn")
@onready var MarkerSpawnEnemy = $Spawn_Enemy
var movementSpeed= 10

func _ready():
	SpawnEnemy()

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scene/Level/level_1.tscn")


func _on_option_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()


func SpawnEnemy():
	for child in MarkerSpawnEnemy.get_children():
		var Enemy = NodeEnemy.instantiate()
		Enemy.global_position = child.global_position
		add_child(Enemy)
