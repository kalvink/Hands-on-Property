<?php
// REO Library Functions



	// HTML Header
	function showHeader($title, $body_css, $logout, $username){
		echo "<!DOCTYPE html><html>

		<title>".$title."</title>
		<meta name='viewport' content='width=device-width, initial-scale=1'>
		<link rel='stylesheet' type='text/css' href='./css/w3.css'>
		<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
		<link rel='stylesheet' type='text/css' href='css/kalvin.css'>
		";


		echo "
		<script type='text/javascript' src='./js/library.js'></script>
		<script type='text/javascript' src='./js/kalvin.js'></script>

		<body ".$body_css.">
		";

		echo "
		<!-- Navigation -->
			<div class='w3-top'>
			<div class='w3-center'>
				<ul class='w3-navbar w3-black w3-large w3-left-align'>
				  <!--<li class='w3-hide-medium w3-hide-large w3-opennav w3-right'>
					<a class='w3-padding-large' href='javascript:void(0)' onclick='myFunction()' title='Toggle Navigation Menu'><i class='fa fa-bars'></i></a>
				  </li>-->

					<li class='w3-hide-small'><a class='w3-hover-none' href='index.php'><img src='./img/logo.png' border='0' /></a></li>
					<li class='w3-hide-small'><a href='buyproperty.php'>Buy</a></li>
					<li class='w3-hide-small'><a href='sellproperty.php'>Sell</a></li>
					<li class='w3-hide-small'><a href='aboutus.php'>About</a></li>
					<li class='w3-hide-small'><a href='contactus.php'>Contact</a></li>


					<li class='w3-right w3-hide-small'><a href='javascript:void(0)' class='w3-hover-red'><i class='fa fa-search'></i></a>

		";

		if($logout == 0){
			echo "
					<li class='w3-right w3-hide-small'><a href='#' class='w3-hover-red'
						onclick=\"document.getElementById('signUpModal').style.display='block';
						document.forms['SignUpForm']['firstName'].value = '';
						document.forms['SignUpForm']['lastName'].value = '';
						document.forms['SignUpForm']['email'].value = '';
						document.forms['SignUpForm']['phone_num'].value = '';
						document.forms['SignUpForm']['passWord'].value = '';
						document.getElementById('signup_msg').innerHTML = '';
						\">Sign up</a></li>
					<li class='w3-right w3-hide-small'><a href='#' class='w3-hover-red'
							onclick=\"document.getElementById('loginModal').style.display='block';
							document.forms['LoginForm']['userName'].value='';
							document.forms['LoginForm']['passWord'].value='';
							document.getElementById('login_msg').innerHTML='';

						\">Login</a></li>
					<!-- <li class='w3-right'><input type='text' class='w3-input' placeholder='Search by postal code'></li>-->
				</ul>
			</div>
			</div>
			";
		}
		else{
			// database authentication
			$db = "reo";
			$table = "user";
			$server = "localhost";
			$user = "root";
			$pass = "";

			// establishes database connection
			$conn = mysqli_connect($server, $user, $pass, $db);
			if(!$conn)
			{
				die('Error encountered: ' . mysql_error());
			}

			$query = "select * from $table where email='$username'";
			$results = mysqli_query($conn, $query);
			$count = mysqli_num_rows($results);
			$value = mysqli_fetch_object($results);

			$firstName = $value->first_name;

			echo "
				<li class='w3-right w3-hide-small'><a href='logout.php'>Log out</a></li>
				<li class='w3-right w3-hide-small'><a href='myaccount.php'>My Account</a></li>
				<li class='w3-right w3-hide-small w3-navitem'>Hello ".$firstName."!</li>
				</ul>
			</div>
			</div>
			";
		}
	}

	// modal view for logging in users
	function loginModal(){
		echo "
		  <div id=\"loginModal\" class=\"w3-modal\">
				<div class=\"w3-modal-content w3-animate-top w3-card-8\" style=\"max-width:400px\">
				  <header class=\"w3-container w3-black\">
					<span onclick=\"document.getElementById('loginModal').style.display='none'\"
					class=\"w3-closebtn\">&times;</span>
					<h2>Login </h2>
				  </header>
				  <div class=\"w3-container w3-padding-16 w3-center\">
						<form action='./php/loginAccountController.php' method=\"post\" onsubmit='return validateLoginForm()' name='LoginForm'>
							<table border='0'>
								<tr>
									<td class='w3-right'>Email: </td>
									<td><input type=\"text\" name=\"userName\" size='25'></td>
								</tr>
								<tr>
									<td class='w3-right'>Password:</td>
									<td><input type=\"password\" name=\"passWord\" size='25'></td>
								</tr>
								<tr>
									<td></td>
									<td class='w3-left'>
										<input type=\"submit\" name=\"login\" value='Submit Login'>
									</td>
								</tr>

								<tr>
									<td></td>
									<td class='w3-left'><a href='#' onclick=\"document.getElementById('recoverLoginModal').style.display='block';
										document.forms['RecoverAccountForm']['email'].value='';
										document.getElementById('recover_msg').innerHTML = '';
										document.getElementById('loginModal').style.display='none'\">Forgot password?</a></td>
								</tr>


								<!-- modal error -->
								<tr>
								<td></td>
								<td>
									<div class='w3-text-red'>
									<p id='login_msg'>

									</p>
									</div>
								</td>
								</tr>

							</table>


						</form>
				  </div>
				  <footer class=\"w3-container w3-black\">

				  </footer>
				</div>
			  </div>
		";

		// modal view for recovering users
		function recoverLoginModal (){
			echo "
			  <div id=\"recoverLoginModal\" class=\"w3-modal\">
					<div class=\"w3-modal-content w3-animate-top w3-card-8\" style=\"max-width:400px\">
					  <header class=\"w3-container w3-black\">
						<span onclick=\"document.getElementById('recoverLoginModal').style.display='none'\"
						class=\"w3-closebtn\">&times;</span>
						<h2>Recover Account </h2>
					  </header>
					  <div class=\"w3-container w3-padding-16 w3-center\">
							<form action='./php/recoverAccountController.php' method=\"post\" onsubmit='return recoverLoginAccount()' name='RecoverAccountForm'>
								<table border='0'>
									<tr>
										<td>Email: </td>
										<td><input type=\"text\" name=\"email\" size='25'></td>
									</tr>
									<tr>
										<td></td>
										<td class='w3-left'>
											<input type=\"submit\" name=\"recover\" value='Recover account'>

										</td>
									</tr>

									<!-- modal error -->
									<tr>
									<td></td>
									<td>
										<div class='w3-text-red'>
										<p id='recover_msg'>

										</p>
										</div>
									</td>
									</tr>

								</table>


							</form>
					  </div>
					  <footer class=\"w3-container w3-black\">

					  </footer>
					</div>
				  </div>
			";
		}

		// modal view for signing up new customers
		function signUpModal(){
		  echo "
		  <div id=\"signUpModal\" class=\"w3-modal\">
				<div class=\"w3-modal-content w3-animate-top w3-card-8\" style=\"max-width:400px\">
				  <header class=\"w3-container w3-black\">
					<span onclick=\"document.getElementById('signUpModal').style.display='none'\"
					class=\"w3-closebtn\">&times;</span>
					<h2>Register Account </h2>
				  </header>
				  <div class=\"w3-container w3-padding-16 w3-center\">
						<form action='./php/registerAccountController.php' method=\"post\" onsubmit='return validateSignUpForm()' name='SignUpForm'>
							<table border='0'>
								<tr>
									<td class='w3-right'>First Name: </td>
									<td><input type=\"text\" name=\"firstName\" size='25'></td>
								</tr>
								<tr>
									<td class='w3-right'>Last Name: </td>
									<td><input type=\"text\" name=\"lastName\" size='25'></td>
								</tr>
								<tr>
									<td class='w3-right'>Email: </td>
									<td><input type=\"text\" name=\"email\" size='25'></td>
								</tr>
								<tr>
									<td class='w3-right'>Phone #: </td>
									<td><input type=\"text\" name=\"phone_num\" size='25'></td>
								</tr>
								<tr>
									<td class='w3-right'>Password:</td>
									<td><input type=\"password\" name=\"passWord\" size='25'></td>
								</tr>
								<tr>
									<td></td>
									<td class='w3-left'>
										<input type=\"submit\" name=\"register\" value='Register Account'>
									</td>
								</tr>



								<!-- modal error -->
								<tr>
								<td></td>
								<td>
									<div class='w3-text-red'>
									<p id='signup_msg'>

									</p>
									</div>
								</td>
								</tr>

							</table>


						</form>
				  </div>
				  <footer class=\"w3-container w3-black\">

				  </footer>
				</div>
			  </div>
			  ";
		}
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
		  <a href='./contactus.php'>Contact Us</a> |
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
	/*
	function client_email($to, $from, $fname, $lname, $username, $password) {


		// subject
		$subject = "Welcome";

		// message
		$message = "
		<html>
		<head>
		<title>Client Information</title>
		</head>
		<body>
		<img src = '' border='0' width='500' height='75' />
		<p>
		Dear $fname $lname,
		<br /><br />
		Thank you for signing up with Hands on Property. Your personal details are below:
		<br /><br />
		Email Address: <a href='$to'><u>$to</u></a>
		<br />
		Username: $username
		<br />
		Password: $password
		<br /><br />
		To login, visit <a href=''>Hands on Property</a>
		<br /><br />
		Best Regards,
		Team HOPS
		</p>
		</body>
		</html>
		";


		// To send HTML mail, the Content-type header must be set
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

		// Additional headers
		$headers .= "To: $to" . "\r\n";
		$headers .= "From: Peter Huang <$from>" . "\r\n";

		// Mail it
		mail($to, $subject, $message, $headers);
	}*/

?>
