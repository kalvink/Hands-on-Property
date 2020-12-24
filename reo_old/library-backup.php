<?php
	function showHeader($css_file, $title, $extra_css){
		echo "<html>
		<head>
		<title>Hands On Properties</title>
		<link rel='stylesheet' type='text/css' href='".$css_file."'>
		";
		echo "<style>";
		echo $extra_css;
		echo "</style>";
		
		echo "
		</head>
		<body>
		";
	}
	
	function showFooter(){
		
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
<?php function client_register() { ?>
<p><br /></p>

	<fieldset>
	<legend>Client Registeration</legend>
	<form method='post' action="<?php echo $_SERVER['PHP_SELF']; ?>">

	<table border='0'>
	<tr><td style='text-align:left;'>First name: <input type='text' name='fname' value='<?php echo($_POST['fname']); ?>' maxlength='34' /></td></tr>
	<tr><td style='text-align:left;'>Last name: <input type='text' name='lname' value='<?php echo($_POST['lname']); ?>' maxlength='34' /></td></tr>
	<tr><td style='text-align:left;'>Username: <input type='text' name='username' value='<?php echo($_POST['username']); ?>' maxlength='34' /></td></tr>
	<tr><td style='text-align:left;'>Password: <input type='password' name='password' maxlength='32' /></td></tr>
	<tr><td style='text-align:left;'>Verify Password: <input type='password' name='password_verify' maxlength='32' /></td></tr>
	<tr><td style='text-align:left;'>Email: <input type='text' name='email' size= '30' maxlength='100' value='<?php echo($_POST['email']); ?>' /></td></tr>
	<tr><td style='text-align:center;'><br /><input type='submit' name='submit' value='Register' /></td></tr>
	</table>

	</form>
	</fieldset>
	
<p><br /></p>
<?php } ?>
<?php function client_login() { ?>
<p><br /></p>

	<fieldset>
	<legend>Client Login</legend>
	<form method='post' action="login_check.php">

	
	<table border='0'>
	<tr><td style='text-align:left;'>User: <input type='text' name='username' maxlength='34' /></td></tr>
	<tr><td style='text-align:left;'>Password: <input type='password' name='password' maxlength='32' /></td></tr>
	<tr><td style='text-align:center;'><br /><input type='submit' name='submit' value='Login' /></td></tr>
	</table>
	
	

	</form>
	</fieldset>

	
<table border='0' cellspacing='10' cellpadding='10' style="margin-left:auto;margin-right:auto;text-align:center;">
<tr>
<td><a href='./create.php'>Not registered?</a></td>
<td><a href='http://www.peterhuang.net'>Back to Home</a></td>
</tr>
</table>
<p><br /></p>	
<?php } ?>