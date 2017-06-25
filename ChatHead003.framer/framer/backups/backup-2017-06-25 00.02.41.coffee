originX = Head.x
originY = Head.y

Head.draggable.enabled = true

#Animation on ending the drag
Head.on Events.DragEnd, (event, layer) ->
	#Comback to original location
	animation = if Head.x > 150 then layer.animate
			properties:
				x: 315
				y: originY
				curve: "spring-rk4"
				curveOptions:
					tension: 400
					friction: 10
					velocity: 0
			Head.draggable.momentumOptions =
				friction: 2.1
				
	else
		animation = layer.animate
			properties:
				x: originX
				y: originY
				curve: "spring(400, 30, 500)"