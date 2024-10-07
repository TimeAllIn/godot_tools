extends Panel


func _ready() -> void:
	Data.canvasItem_array = get_tree().get_nodes_in_group("screen")
	
	Data.textCode = $"页面合集/记事本/内容/编辑"
	
	pass
