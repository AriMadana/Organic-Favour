mapboxgl.accessToken = 'pk.eyJ1IjoiN2hlNHIxc2UiLCJhIjoiY2prcXpzdTV6MXpwMjN1czc2eG5uZjd6bSJ9.P4KTUArF5MU9eY-WrOCJdg';
var fruits = {
    "type": "FeatureCollection",
    "features": [{
        "type": "Feature",
        "properties": {
            "icon": "cat"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.038659, 38.931567]
        }
    }, {
        "type": "Feature",
        "properties": {
            "icon": "cat"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.003168, 38.894651]
        }
    }, {
        "type": "Feature",
        "properties": {
            "icon": "bar"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.090372, 38.881189]
        }
    }, {
        "type": "Feature",
        "properties": {
            "icon": "bicycle"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.052477, 38.943951]
        }
    }, {
        "type": "Feature",
        "properties": {
            "icon": "music"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.031706, 38.914581]
        }
    }, {
        "type": "Feature",
        "properties": {
            "icon": "music"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.020945, 38.878241]
        }
    }, {
        "type": "Feature",
        "properties": {
            "icon": "music"
        },
        "geometry": {
            "type": "Point",
            "coordinates": [-77.007481, 38.876516]
        }
    }]
};

var layerIDs = []; // Will contain a list used to filter against.
var filterInput = document.getElementById('filter-input');
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/basic-v9',
    center: [-77.04, 38.907],
    zoom: 11.15
});
// Add zoom and rotation controls to the map.
map.addControl(new mapboxgl.NavigationControl());
map.on('load', function() {
    // Add a GeoJSON source containing place coordinates and information.
    map.addSource('places', {
        "type": "geojson",
        "data": fruits
    });

    fruits.features.forEach(function(feature) {
        var symbol = feature.properties['icon'];
        var layerID = 'poi-' + symbol;

        // Add a layer for this symbol type if it hasn't been added already.
        if (!map.getLayer(layerID)) {
            if(layerID == 'poi-theatre') {
                map.loadImage('${pageContext.request.contextPath}/assets/img/fruit-location.png', function(error, image) {
                    if (error) throw error;
                    map.addImage('cat', image);
                    map.addLayer({
                        "id": layerID,
                        "type": "symbol",
                        "source": "places",
                        "layout": {
                            "icon-image": "cat",
                            "icon-size": 1.5,
                            "text-field": symbol,
                            "text-font": ["Open Sans Bold", "Arial Unicode MS Bold"],
                            "text-size": 11,
                            "text-transform": "uppercase",
                            "text-letter-spacing": 0.05,
                            "text-offset": [0, 1.5]
                        },
                        "paint": {
                            "text-color": "#202",
                            "text-halo-color": "#fff",
                            "text-halo-width": 2
                        },
                        "filter": ["==", "icon", symbol]
                    });
                });
            }
            map.addLayer({
                "id": layerID,
                "type": "symbol",
                "source": "places",
                "layout": {
                    "icon-image": symbol + "-15",
                    "icon-allow-overlap": true,
                    "icon-size": 1.5,
                    "text-field": symbol,
                    "text-font": ["Open Sans Bold", "Arial Unicode MS Bold"],
                    "text-size": 11,
                    "text-transform": "uppercase",
                    "text-letter-spacing": 0.05,
                    "text-offset": [0, 1.5]
                },
                "paint": {
                    "text-color": "#202",
                    "text-halo-color": "#fff",
                    "text-halo-width": 2
                },
                "filter": ["==", "icon", symbol]
            });

            layerIDs.push(layerID);
        }
    });

    filterInput.addEventListener('keyup', function(e) {
        // If the input value matches a layerID set
        // it's visibility to 'visible' or else hide it.
        var value = e.target.value.trim().toLowerCase();
        layerIDs.forEach(function(layerID) {
            map.setLayoutProperty(layerID, 'visibility',
                layerID.indexOf(value) > -1 ? 'visible' : 'none');
        });
    });

    map.on('click', 'poi-music', function (e) {
        map.flyTo({center: e.features[0].geometry.coordinates});
    });

    // Change the cursor to a pointer when the it enters a feature in the 'symbols' layer.
    map.on('mouseenter', 'poi-music', function () {
        map.getCanvas().style.cursor = 'pointer';
    });

    // Change it back to a pointer when it leaves.
    map.on('mouseleave', 'poi-music', function () {
        map.getCanvas().style.cursor = '';
    });
});
