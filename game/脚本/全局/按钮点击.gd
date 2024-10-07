extends Panel

@export var id:int = 0

@export var button_string:String = "临时文本"

func _ready() -> void:
	$"文本".set_text(name)


func _on_按钮_pressed() -> void:
	if Data.screen_id != id:
		Data.canvasItem_array[Data.screen_id].set_visible(false)
		Data.screen_id = id
		Data.canvasItem_array[id].set_visible(true)
	pass 
