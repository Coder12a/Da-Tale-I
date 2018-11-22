extends RichTextLabel

var dialog = []
var print_time = 0.05
var pt = 0
var reading = false

func _ready():
	visible_characters = 0
	set_process_input(true)
	if reading == false:
		get_tree().paused = true
		get_owner().hide()

func _input(event):
	if event.is_pressed():
		if visible_characters > get_total_character_count():
			if 0 < dialog.size() - 1:
				dialog.remove(0)
				set_bbcode(dialog[0])
				visible_characters = 0
			else:
				# Todo make the dialog fade or something.
				get_tree().paused = false
				get_owner().hide()
				reading = false
		else:
			visible_characters = get_total_character_count()

func _process(delta):
	if pt < 0:
		visible_characters += 1
		pt = print_time
	pt -= delta

func add_dialog(text):
	get_owner().show()
	dialog.append(text)
	if reading == false:
		get_tree().paused = true
		reading = true
		set_bbcode(dialog[0])