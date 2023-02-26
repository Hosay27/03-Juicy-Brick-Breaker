extends Control

func _on_Play_pressed():
	var _scene = get_tree().change_scene("res://Game.tscn")

func _on_Quit_pressed():
	get_tree().quit()


func _on_Main_Menu_ready():
	var menu_music = get_node_or_null("/root/Main_Menu/Menu_Music")
	if menu_music != null:
		menu_music.play()
