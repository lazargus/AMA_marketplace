import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 13, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const marker = JSON.parse(mapElement.dataset.markers);
    const el = document.createElement('div');
      el.className = 'marker';

      new mapboxgl.Marker(el)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    fitMapToMarkers(map, marker);
  }
};

export { initMapbox };

