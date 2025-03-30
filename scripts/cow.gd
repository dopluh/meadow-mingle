extends Area2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var moo: Label = $InteractionArea/moo

func _on_body_entered(_body: Node2D) -> void:
	pass # Replace with function body.
	
func _ready() -> void:
	interaction_area.interact = Callable(self, "talk")
	
func talk() -> void:
	moo.show() if moo.visible == false else moo.hide()
