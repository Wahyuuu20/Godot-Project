extends Area2D

var speedProjetile = 10

func _process(delta):
	position.y -= speedProjetile * delta
	
	
	


func _on_area_entered(area):
	if area.is_in_group("test2"):
		area.Damage(1)
		queue_free()
