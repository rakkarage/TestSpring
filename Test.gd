extends Control

@onready var _cubicOut : Sprite2D = $Center/Panel/CubicOut
@onready var _cubicIn : Sprite2D = $Center/Panel/CubicIn
@onready var _cubicOutIn : Sprite2D = $Center/Panel/CubicOutIn
@onready var _cubicInOut : Sprite2D = $Center/Panel/CubicInOut
@onready var _elasticOut : Sprite2D = $Center/Panel/ElasticOut
@onready var _elasticIn : Sprite2D = $Center/Panel/ElasticIn
@onready var _elasticOutIn : Sprite2D = $Center/Panel/ElasticOutIn
@onready var _elasticInOut : Sprite2D = $Center/Panel/ElasticInOut
@onready var _springOut : Sprite2D = $Center/Panel/SpringOut
@onready var _springIn : Sprite2D = $Center/Panel/SpringIn
@onready var _springOutIn : Sprite2D = $Center/Panel/SpringOutIn
@onready var _springInOut : Sprite2D = $Center/Panel/SpringInOut

const _size := 384.0
const _time := 1.0

func _ready():
	var tween = get_tree().create_tween()
	var to = func(from: Node2D) -> Vector2:
		return Vector2(from.position.x + _size, from.position.y)
	var back = func(from: Node2D) -> Vector2:
		return Vector2(0, from.position.y)
	tween.tween_interval(1)
	tween.tween_property(_cubicOut, "position", to.call(_cubicOut), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(_cubicIn, "position", to.call(_cubicIn), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN)
	tween.parallel().tween_property(_cubicOutIn, "position", to.call(_cubicOutIn), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT_IN)
	tween.parallel().tween_property(_cubicInOut, "position", to.call(_cubicInOut), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.parallel().tween_property(_elasticOut, "position", to.call(_elasticOut), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(_elasticIn, "position", to.call(_elasticIn), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_IN)
	tween.parallel().tween_property(_elasticOutIn, "position", to.call(_elasticOutIn), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT_IN)
	tween.parallel().tween_property(_elasticInOut, "position", to.call(_elasticInOut), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_IN_OUT)
	tween.parallel().tween_property(_springOut, "position", to.call(_springOut), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(_springIn, "position", to.call(_springIn), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_IN)
	tween.parallel().tween_property(_springOutIn, "position", to.call(_springOutIn), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT_IN)
	tween.parallel().tween_property(_springInOut, "position", to.call(_springInOut), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_IN_OUT)
	tween.chain().tween_interval(1)
	tween.chain().tween_property(_cubicOut, "position", back.call(_cubicOut), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(_cubicIn, "position", back.call(_cubicIn), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN)
	tween.parallel().tween_property(_cubicOutIn, "position", back.call(_cubicOutIn), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT_IN)
	tween.parallel().tween_property(_cubicInOut, "position", back.call(_cubicInOut), _time).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.parallel().tween_property(_elasticOut, "position", back.call(_elasticOut), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(_elasticIn, "position", back.call(_elasticIn), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_IN)
	tween.parallel().tween_property(_elasticOutIn, "position", back.call(_elasticOutIn), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT_IN)
	tween.parallel().tween_property(_elasticInOut, "position", back.call(_elasticInOut), _time).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_IN_OUT)
	tween.parallel().tween_property(_springOut, "position", back.call(_springOut), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(_springIn, "position", back.call(_springIn), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_IN)
	tween.parallel().tween_property(_springOutIn, "position", back.call(_springOutIn), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT_IN)
	tween.parallel().tween_property(_springInOut, "position", back.call(_springInOut), _time).set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_IN_OUT)
	tween.set_loops();
