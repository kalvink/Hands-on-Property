<?php
	include 'library.php';
	showHeader("main.css", "Hands On Property");


	// connectToDb("localhost", "root", "");

?>
  <div id="page-wrap">

    <a href="index.php"><img src="img/logo.png"></a>
<div id="nav">
    <ul>
      <li><a href="index.php" class="selected">HOME</a></li>
      <li><a href="about.php">ABOUT</a></li>
      <li><a href="contact.php">CONTACT</a></li>
    </ul>
</div>
    <table>
      <tr>
        <td>
          <div>Please enter your city:</div>
        </td>
      </tr>
      <tr>
        <td>
          <form method="post" id="searchform" onsubmit="myMap()">
            <input type="text" name="name">
            <input type="submit" name="submit" value="Get Estimate"> </form>
          </td>
        </tr>
      </table>


      <h1>Map</h1>

      <div id="map" style="width:100%;height:500px"></div>
<!--
      <script>
      function myMap() {
        var mapCanvas = document.getElementById("map");
        var mapOptions = {
          center: new google.maps.LatLng(43.6532,79.3832),
          zoom: 5
        };
        var map = new google.maps.Map(mapCanvas, mapOptions);
      }
      </script>
-->
    <script>
      var customLabel = {
        restaurant: {
          label: 'R'
        },
        bar: {
          label: 'B'
        }
      };

        function initMap() {

	    // creates a map with Toronto's coordinates, fill markers on top of it
        var map = new google.maps.Map(document.getElementById('map'), {
          //center: new google.maps.LatLng(-33.863276, 151.207977),
		  center: new google.maps.LatLng(43.6532, -79.3832),
          zoom: 10
        });
        var infoWindow = new google.maps.InfoWindow;

          // Change this depending on the name of your PHP or XML file
          //downloadUrl('https://storage.googleapis.com/mapsdevsite/json/mapmarkers2.xml', function(data) {

		  downloadUrl('regionXMLParser.php', function(data) {
            var xml = data.responseXML;
            var markers = xml.documentElement.getElementsByTagName('marker');  // xml tag 'marker'


            Array.prototype.forEach.call(markers, function(markerElem) {
              var name = markerElem.getAttribute('name');
              var address = markerElem.getAttribute('address');
              var type = markerElem.getAttribute('type');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lon')));

			  // Show Info Window when clicked on marker

			  // create new instance of a label for marker called 'infowindowincontent'
              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = name
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = address
              infowincontent.appendChild(text);
              var icon = customLabel[type] || {};
              var marker = new google.maps.Marker({
                map: map,
                position: point,
                label: icon.label
              });


			  // listener for markers to put marker into map
              marker.addListener('click', function() {
                infoWindow.setContent(infowincontent);
                infoWindow.open(map, marker);
              });
            });
          });
        }


	   // opens up a connection
      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

      function doNothing() {}
    </script>

	  <!-- draws map with key -->
      <script async defer
	  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDHsdmmH0sItPxybhRbKM-Qq5t26Lm4Llg&callback=initMap"></script>

    </div>
<?php
	showFooter();
?>
