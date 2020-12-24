<?php
// REO Library Functions

	// HTML Header
	function showHeader($title, $jss_file, $css_file, $extra_css, $body_css){
		echo "<html>
		<head>
		<title>".$title."</title>
		<link rel='stylesheet' type='text/css' href='".$css_file."'>
		<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
		";
		echo "<style>";
		echo $extra_css;
		echo "</style>";
		
		echo "
		
		<script type='text/javascript' src='".$jss_file."'>
		</script>
		</head>
		<body ".$body_css.">
		";
		
		echo "
		<!-- Navigation -->
			<div class='w3-top'>
			<div class='w3-center'>
				<ul class='w3-navbar w3-black w3-large'>
					<li><a href='index.php'><img src='./img/logo.png' border='0' /></a></li>
					<li><a href='buyproperty.php'>Buy</a></li>
					<li><a href='sellproperty.php'>Sell</a></li>
					<li><a href='aboutus.php'>About Us</a></li>
					<li><a href='contactus.php'>Contact Us</a></li>
					
					
					<li class='w3-right'><a href='javascript:void(0)'><i class='fa fa-search'></i></a></li>
					<!-- <li class='w3-right'><input type='text' class='w3-input' placeholder='Search by postal code'></li>-->
				</ul>
			</div>
			</div>
		";
	}
	
	// HTML Footer
	function showFooter(){
		echo "
			<!-- Footer Content -->
			<div class='w3-bottom'>
			<footer class='w3-display-container w3-padding-16 w3-black w3-medium'>
		
			<nav class='w3-topnav w3-black w3-center'>
		  <a href='#'>Terms of Use</a> | 
		  <a href='#'>Privacy Policy</a> |
		  <a href='#'>Contact Us</a> |
		  <a href='#'>Free Android App</a> |
		  <a href='#'>Free iOS App</a> 
		</nav>
		
		<div class='w3-center'>
			
		  <i class='fa fa-facebook-official w3-hover-text-indigo'></i>
		  <i class='fa fa-instagram w3-hover-text-purple'></i>
		  <i class='fa fa-snapchat w3-hover-text-yellow'></i>
		  <i class='fa fa-pinterest-p w3-hover-text-red'></i>
		  <i class='fa fa-twitter w3-hover-text-light-blue'></i>
		  <i class='fa fa-linkedin w3-hover-text-indigo'></i> 
		</div>
		</footer>
		</div>
		";
		
		echo
		"</body>
		</html>
		";
	}
	
	// returns connection object
	function connectToDb($servername, $username, $password, $db, $sql){
		// Create connection
		$conn = new mysqli($servername, $username, $password, $db);

		// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 
		
		//return $conn;

		$result = mysqli_query($conn, $sql);
		
		mysqli_close($conn);
	}
	

?>