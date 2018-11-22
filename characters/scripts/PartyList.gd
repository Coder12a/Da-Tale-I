# Array that holds all members of the party.
var party = []

# The character in control.
var head_of_the_party = null

func join_party(classname):
	# get the class data and create an instance of it.
	var raw_data = load("res://characters/scripts/Character_%s.gd" % classname)
	var pm = raw_data.new()
	
	# formated the joined party message.
	print("%s joined your party!" % classname)
	party.append(pm)
	
	# Set the leader of the party.
	if head_of_the_party == null:
		head_of_the_party = party[0]
		print("%s is the one leading the party." % classname)

func switch_leader_by_classname(classname):
	for i in party:
		if party[i].classname == classname:
			head_of_the_party = party[i]
			# End this function call.
			return null

func switch_leader_by_name(name):
	for i in party:
		if party[i].name == name:
			head_of_the_party = party[i]
			# End this function call.
			return null