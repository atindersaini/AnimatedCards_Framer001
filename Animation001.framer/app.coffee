# Setup initial properties
placeholder1.opacity = 0
placeholder2.opacity = 0

card2.x = 346
card2.y = 150
card2.scale = 0.85
card2.originX = 0
card2.originY = 0
card1.z = 1
card2.z = 1

card1.draggable.enabled = true
card2.draggable.enabled = true

card1.draggable.momentum = false
card2.draggable.momentum = false

card1.draggable.vertical = false
card2.draggable.vertical = false

# Add States
card1.states =
	two: x: -259, y: 150, scale: 0.85, originX: 1, originY: 0, z: 2
card1.states.animationOptions = curve: 'spring(200, 20, 0)'

card2.states = 
	two: scale: 1, x: 44, y: 115, z: 2, originX: 0, originY: 0
card2.states.animationOptions = curve: 'spring(200, 20, 0)'

# Add Events 
card1.onDrag ->
	if card1.x < 15
		card1.animate('two')
		card2.animate('two')

	else
		card1.animate('default')
		card2.animate('default')
card2.onDrag ->
	if card2.x > 160
		card1.animate('default')
		card2.animate('default')

	else 
		card1.animate('two')
		card2.animate('two')
