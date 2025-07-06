extends Node


func _button_pressed_game_start():
	get_tree().change_scene_to_file("res://Game State.tscn")

func _button_pressed_main_menu():
	get_tree().change_scene_to_file("res://Main Menu.tscn")

func _button_pressed_exit_game():
	get_tree().quit()
