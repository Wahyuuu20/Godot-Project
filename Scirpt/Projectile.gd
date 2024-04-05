extends Area2D

# var 
@export var movementProjectile = 950

func _process(delta):
	position.y -= movementProjectile * delta




func _on_visible_on_screen_notifier_2d_screen_exited():
	Delete_node()



func Death():
	queue_free()
	
func Delete_node():
	queue_free()	



func KenaHIt(area):
	if area.is_in_group("Enemy"):
		area.damage(1)
		Delete_node()
	
	if area.is_in_group("Sheild"):
		area.Damage_Sheild(1)
		Delete_node()
		

