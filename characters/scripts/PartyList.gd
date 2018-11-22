# Array that holds all members of the party.
var party = []

# The character in control.
var head_of_the_party = null


func join_party(dialogBox,classname):
	# get the class data and create an instance of it.
	var pm = load("res://characters/scripts/Character_%s.gd" % classname).new()
	
	# formated the joined party message.
	print("%s joined your party!" % pm.character_name)
	dialogBox.add_dialog("%s joined your party!" % pm.character_name)
	party.append(pm)
	
	# Set the leader of the party.
	if head_of_the_party == null:
		head_of_the_party = party[0]
		print("%s is leading the party." % pm.character_name)

func join_party_instance(dialogBox,instance):
	print("%s joined your party!" % instance.character_name)
	dialogBox.add_dialog("%s joined your party!" % instance.character_name)
	party.append(instance)
	if head_of_the_party == null:
		head_of_the_party = party[0]
		print("%s is leading the party." % instance.character_name)

func switch_leader_by_classname(classname):
	for i in party:
		if party[i].classname == classname:
			head_of_the_party = party[i]
			print("%s is leading the party." % head_of_the_party.character_name)
			# End this function call.
			return null

func switch_leader_by_name(name):
	for i in party:
		if party[i].name == name:
			head_of_the_party = party[i]
			print("%s is leading the party." % name)
			# End this function call.
			return null