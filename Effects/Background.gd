extends ColorRect

var c = 0
var colors = [
	Color8(134,46,156) 
	,Color8(156,54,181)  
	,Color8(95,61,196) 
	,Color8(103,65,217)  
	,Color8(54,79,199) 
	,Color8(59,91,219)
]

func _ready():
	update_color()

func update_color():
	$Tween.interpolate_property(self, "color", color, colors[c], 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()

func _on_Tween_tween_all_completed():
	c = wrapi(c+1, 0, colors.size())
	update_color()
