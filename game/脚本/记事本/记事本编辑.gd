extends CodeEdit





func _on_text_changed() -> void:
	var config_File:ConfigFile = ConfigFile.new()
	config_File.set_value("text","text",get_text())
	config_File.save("user://" + Data.look_name+".texttools")
	#print(get_text())
	pass 
