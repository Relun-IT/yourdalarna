/*$(document).on('turbolinks:load', function() {
  var handler = Gmaps.build('Google');
  handler.buildMap({ internal: {id: 'directions'} }, function(){
    // be aware chrome >= 50 requires https for geolocation to work
    if(navigator.geolocation)
      navigator.geolocation.getCurrentPosition(displayOnMap);
  });

  function displayOnMap(position){
    var marker = handler.addMarker({
      lat: position.coords.latitude,
      lng: position.coords.longitude
    });

    handler.map.centerOn(marker);
  };

  /*<script type="text/javascript">
  handler = Gmaps.build('Google');
    handler.buildMap({
      provider: {
        disableDefaultUI: true
        // pass in other Google Maps API options here

      },
      internal: {
        id: 'map'
      }
    },

    function(){
      markers = handler.addMarkers(<%=raw @hash.to_json %>);;
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
    }
  );
  </script>
*/


  /*var directionsDisplay = new google.maps.DirectionsRenderer();
  var directionsService = new google.maps.DirectionsService();

  function calcRoute() {
    var origin      = new google.maps.LatLng(41.85003, -87.6500523);
    var destination = new google.maps.LatLng(42.850033, -85.6500523);
    var request = {
        origin:      origin,
        destination: destination,
        travelMode:  google.maps.TravelMode.DRIVING
    };
    directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
      }
    });
  }

  calcRoute();

  var handler = Gmaps.build('Google');
  handler.buildMap({ internal: {id: 'directions'}}, function(){
    directionsDisplay.setMap(handler.getMap());
  });

  working code for current:
  var marker = handler.addMarker({
    lat: position.coords.latitude,
    lng: position.coords.longitude,
    infowindow: "YOUR LOCATION"
  });




  <script>
  $(document).on('turbolinks:load', function() {
    var handler = Gmaps.build('Google');
    handler.buildMap({
      provider: {
        zoom: 9,
        center: {lat: 60.4876438, lng: 15.4260946}
      },
      internal: {id: 'directions'}
      }, function(){

      if(navigator.geolocation)
        navigator.geolocation.getCurrentPosition(displayOnMap);
    });

    function displayOnMap(position){

      var jsonCollection = <%= raw @hash.to_json %>;
      var markers = handler.addMarkers(jsonCollection);

      handler.map.centerOn(marker);
    };
  });
  </script>
  */
