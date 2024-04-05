extends Area2D

@export var projectileSpeed : float = 100

func _process(delta):
	position.y += projectileSpeed * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	Delete_node()


func _on_area_entered(area):
	# projectile obj wall
	if area.is_in_group("damageableWall"):
		Delete_node()
		
		
		
func Delete_node():
	queue_free()	
