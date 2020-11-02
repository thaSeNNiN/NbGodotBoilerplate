extends Node2D

onready var game_manager: Control  = get_node("/root/GameManager")

func _on_ButtonBack_button_up():
	Events.emit_signal("play_sound", "menu_click")
	Events.emit_signal("menu_back")


func _on_ButtonMusic_button_up():
	Events.emit_signal("play_sound", "menu_click")
	Events.emit_signal("switch_music", !Global.userConfig.music)


func _on_ButtonSound_button_up():
	Events.emit_signal("play_sound", "menu_click")
	Events.emit_signal("switch_sound", !Global.userConfig.sound)


func _on_ButtonTest_button_up() -> void:
	Events.emit_signal("play_sound", "menu_click")
#	Events.emit_signal("change_level", 1)
	Events.emit_signal("new_game")
