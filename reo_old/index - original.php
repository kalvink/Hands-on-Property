<?php
	include 'library.php';
	
	showHeader("main.css", "Hands On Property", 
	"
	/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 30%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
	");
	
	
	// connectToDb("localhost", "root", "");*/

?>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">×</span>
    <?php 
	$user_check = $_GET['user_check'];
	$email_check = $_GET['email_check'];
	$error = array(); // error array
	
	if(empty($_POST))
	{
		if(!empty($_GET))
		{
			echo "<fieldset><legend>Errors</legend>";
			if(!empty($user_check))
			{
				echo "Username <b><i>$user_check</i></b> already exists.<br />";
			}
			if(!empty($email_check))
			{
				echo "Email <b><i>$email_check</i></b> already used.<br />";
			}
			echo "</fieldset><p><br /></p>";
		}
	}
	client_register(); 
	
	?>
  </div>

</div>


  <div id="page-wrap">

    <a href="index.php"><img src="img/logo.png"></a>
<div id="nav">
    <ul>
      <li><a href="index.php" class="selected">HOME</a></li>
      <li><a href="about.php">ABOUT</a></li>
      <li><a href="contact.php">CONTACT</a></li>
	  <li>

		<a href ="#myModal" id="myBtn">SIGN IN</a></li>
	  </li>
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

	

	

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<?php
	showFooter();
?>

