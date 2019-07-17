// api key is AIzaSyCBxx9WjoLvV9UGYiBlFmUIrEQ0duQwoFw

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat:43.6593236, lng: -79.4322362},
    zoom: 28,
    mapTypeId: 'satellite'
  });
}

window.addEventListener("click", () => {
  console.log("You jsut clicked");
})
