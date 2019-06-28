// api key is AIzaSyCBxx9WjoLvV9UGYiBlFmUIrEQ0duQwoFw

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 43.658197, lng: -79.433820},
    zoom: 20,
    mapTypeId: 'satellite'
  });
}

function longlat(){
  var input = document.getElementById("postal");
  console.log(input.value);
}
