extends Node2D

@onready var NodeProjectileEnemy = preload("res://scene/projectile_enemy.tscn")
@onready var nodeProjectileDeath := preload("res://scene/ProjectileDeath.tscn")
@onready var ProjectileMark := $Marker2D
@onready var NodetimerShoot  = $DelayFiringshoot
@onready var rayCast = $RayCast2D

@export var life = 1
var Shoot = false
var firingshootTimer = 0.5
var player1


func _process(delta):
	pass
	#ProjectileEnemyGun()

	
func damage(amount: int):
	life -= amount
	if life <= 0:
		#Projectile_death()
		Death()
	
		

func Death():
	queue_free()	
	
	
#Problem
#func Projectile_death():
#	var projcetileDeath = nodeProjectileDeath.instantiate()
#	projcetileDeath.global_position =	ProjectileMark.global_position
#	add_child(projcetileDeath)

func ProjectileEnemyGun():
	if rayCast.is_colliding():
		Shoot = true
		if Shoot == true and NodetimerShoot.is_stopped():
			NodetimerShoot.start(firingshootTimer)
			var Enemy = NodeProjectileEnemy.instantiate()
			Enemy.position = ProjectileMark.position
			add_child(Enemy)


func Delete_node():
	queue_free()	

