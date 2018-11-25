extends Polygon2D

var dialog = []
var print_time = 0.05
var pt = 0
var reading = false
var dealogtext = null

func _ready():
	dealogtext = get_node("DialogText")
	dealogtext.visible_characters = 0
	dealogtext.set_process_input(true)
	if reading == false:
		get_tree().paused = true
		hide()

func _input(event):
	if event.is_pressed():
		if dealogtext.visible_characters > dealogtext.get_total_character_count():
			if 0 < dialog.size() - 1:
				dialog.remove(0)
				dealogtext.set_bbcode(dialog[0])
				dealogtext.visible_characters = 0
			else:
				# Todo make the dialog fade or something.
				get_tree().paused = false
				hide()
				reading = false
		else:
			dealogtext.visible_characters = dealogtext.get_total_character_count()

func _process(delta):
	if pt < 0:
		dealogtext.visible_characters += 1
		pt = print_time
	pt -= delta

func add_dialog(text):
	dialog.append(text)
	if reading == false:
		show()
		get_tree().paused = true
		reading = true
		dealogtext.set_bbcode(dialog[0])