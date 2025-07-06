extends Area2D


func _on_area_entered(area):
	if area.name.begins_with == "Paddle":
		print("Im working as intended")
