extends Panel


#窗口的移动
var dragging:bool #拖拽状态
var v2_mouse:Vector2i #鼠标的偏差
func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			dragging = true
			v2_mouse = get_global_mouse_position()
		else:
			dragging = false
	if event is InputEventMouseMotion and dragging:
	#窗口位置=鼠标位置 - 鼠标的偏差值
		DisplayServer.window_set_position(DisplayServer.mouse_get_position()-v2_mouse)

#游戏关闭
func _on_退出_pressed() -> void:
	get_tree().quit()
	pass

#最小化窗口
func _on_最小化_pressed() -> void:
	DisplayServer.window_set_mode(1)
	pass

#置顶程序
var is_on_top:bool = false

func _on_置顶_pressed() -> void:
	is_on_top = !is_on_top
	get_window().always_on_top = is_on_top
	pass


	
