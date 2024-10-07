extends Panel


func _on_记事本_visibility_changed() -> void:
	if is_visible():
		close_self()
	pass

const text_button = preload("res://预制体/记事本/记事本按钮.tscn")

func _on_创建文本按钮_pressed() -> void:
	#需要改进
	if $"名字/输入框".get_text() == null:
		return
	
	var config_File:ConfigFile = ConfigFile.new()
	config_File.set_value("text","text"," ")
	config_File.save("user://" + $"名字/输入框".get_text()+".texttools")
	
	#生成按钮
	var temp_button = text_button.instantiate()
	temp_button.self_name = $"名字/输入框".get_text()	
	$"../列表/容器滚动/容器".add_child(temp_button)
	
	
	close_self()
	pass 


func _on_退出按钮_pressed() -> void:
	close_self()
	pass 

func close_self():
	$"名字/输入框".set_text(" ")
	set_visible(false)


func _on_创建_pressed() -> void:
	if not is_visible():
		set_visible(true)
	pass
