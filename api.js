



var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 10,
    center: {lat: 47.0073004, lng: -53.1927105},
    mapTypeId: 'satellite'
  });

  // Define the LatLng coordinates for the outer path.
  var outerCoords = [
   {lat: 47.2783879 , lng: -53.4940028}, // north west
   {lat: 46.845906, lng: -53.4940028}, // south west
   {lat: 46.845906, lng: -52.8548659}, // south east
   {lat: 47.2783879 , lng: -52.8548659}  // north east
     ];

  var outerCoords2 = [
    {lat:47.440581, lng: -53.2972669}, //NW
    {lat: 47.3463259, lng: -53.2972669}, // SW
    {lat: 47.3463259, lng: -53.1803169}, // SE
    {lat: 47.440581, lng: -53.1803169} // NE
  ]

  map.data.add({geometry: new google.maps.Data.Polygon([outerCoords])});

  map.data.add({geometry : new google.maps.Data.Polygon([outerCoords2])})
}
