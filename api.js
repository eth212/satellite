// api key is AIzaSyCBxx9WjoLvV9UGYiBlFmUIrEQ0duQwoFw

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat:47.4649829, lng: -52.9220728},
    zoom: 28,
    mapTypeId: 'satellite'
  });
}



window.addEventListener("click", () => {
  console.log("You just clicked");
})
