sketch = Framer.Importer.load("imported/example-file@1x")
splitImageArray = require "split-image-array"

# Specifying the width and height of the Sketch artboards
artboardWidth = 200
artboardHeight = 200

# Creating a container for all the images (This container is what we will be rotating later)
container = new Layer
	width: artboardWidth
	height: artboardHeight
	clip: false;
	backgroundColor: "transparent"

# The origin is set to 1.5 in order to rotate the entire container the center
container.originY = 1.5

# Create a mask for the container
mask = new Layer
	backgroundColor: "#fff"
	width: artboardWidth
	height: artboardHeight

# Mask layer clipping set to true to only show the image with the right angle
mask.clip = true

# Centering the mask layer to the center of window
mask.center()
window.onresize = -> mask.center()
container.superLayer = mask

artboard1 = sketch.artboard1
artboard2 = sketch.artboard2
artboard3 = sketch.artboard3
artboard4 = sketch.artboard4
artboard5 = sketch.artboard5

allArtboards = [artboard1, artboard2, artboard3, artboard4, artboard5]

for artboard in allArtboards
	artboard.superLayer = container
	artboard.visible = true

rotateAngle = splitImageArray.splitImageArray(allArtboards)

startAngle = 0

# Using the interval function to rotate the container 'rotateAngle' degrees every 1 second.
Utils.interval 1, ->
	container.animate
		properties: {rotationZ: startAngle + rotateAngle}
		curve: "spring(300,20,0)"
	startAngle = startAngle + rotateAngle