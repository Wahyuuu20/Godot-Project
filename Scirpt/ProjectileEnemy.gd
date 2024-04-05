extends Area2D

var SpeedProjectile = 900

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += SpeedProjectile * delta




func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.damage(1)
		Delete_Node()	
	
func _on_area_entered(area):
	if area.is_in_group("damageableWall"):
		Delete_Node()


func Delete_Node():
	queue_free()


