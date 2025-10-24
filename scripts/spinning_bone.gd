extends Area2D

@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

var speed = 40
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * delta * direction

func set_direction(skeleton_direction):
	direction = skeleton_direction
	anim.flip_h = direction < 0
	# codigo acima simplificado.
	#if direction > 0:
	#	anim.flip_h = false
	#else:
	#	anim.flip_h = true

func _on_self_destruct_timer_timeout() -> void:
	queue_free() # Replace with function body.


func _on_area_entered(_area: Area2D) -> void:
	queue_free()


func _on_body_entered(_body: Node2D) -> void:
	queue_free() # Replace with function body.
