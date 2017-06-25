{ mapboxgl } = require "npm"

# Creating a new HTML layer
# for the map to live inside of and scale
# it to fit the entire window
mapHeight = Screen.height
mapWidth = Screen.width

mapboxLayer = new Layer
mapboxLayer.ignoreEvents = false
mapboxLayer.width = mapWidth
mapboxLayer.height = mapHeight
mapboxLayer.html = "<div id='map'></div>"
mapElement = mapboxLayer.querySelector("#map")
mapElement.style.height = mapHeight + 'px'

# Set your Mapbox access token here!
mapboxgl.accessToken = 'pk.eyJ1IjoiYXRpbmRlcnNhaW5pIiwiYSI6ImNqNGNicHFmMjA5ZngzM250OWJxd3k0ZmoifQ.kim_ZDcdAS3ADoS_AD-ANA'

map = new mapboxgl.Map({
    container: mapElement
    zoom: 12.5
    center: [-77.01866, 38.888]
    # here we're using a default style:
    # you can use any of the defaults or a
    # custom style you design in Mapbox Studio
    style: 'mapbox://styles/atindersaini/cj4cbteh30e2m2so8w0v6ubmb'
    hash: true
})
