sketch = Framer.Importer.load("imported/example-file@1x")
splitImageArray = require "split-image-array"

artboardWidth = 200
artboardHeight = 200

container = new Layer
	width: artboardWidth
	height: artboardHeight
	clip: false;
	backgroundColor: "transparent"

container.originY = 1.5

mask = new Layer
	backgroundColor: "#fff"
	width: artboardWidth
	height: artboardHeight

mask.clip = true

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

Utils.interval 1, ->
	container.animate
		properties: {rotationZ: startAngle + rotateAngle}
		curve: "spring(300,20,0)"
	startAngle = startAngle + rotateAngle