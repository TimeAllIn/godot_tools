extends Panel

@export var self_name:String

func _ready() -> void:
	$"文本".set_text(self_name)

func _on_按钮文件_pressed() -> void:
	if Data.look_name == self_name:
		return
	Data.look_name = self_name
	var textConfig = ConfigFile.new()
	var result =  textConfig.load("user://" + self_name +".texttools")
	if result != OK:
		destory_object()
		return
	var load_text = textConfig.get_value("text","text")
	Data.textCode.set_text(load_text)
	
	pass


func destory_object():
	queue_free()
