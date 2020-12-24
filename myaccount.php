<?php
session_start();
if(!isset($_SESSION['user']))
{
	header("location:index.php");
}
	include("library.php");
	
	$email = $_SESSION['user'];

	showHeader("Hands on Property Sell My Account", "", 1 , $email);
	loginModal();
	recoverLoginModal();
	signUpModal();
?>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:0px">

  Welcome to my accounts. Only avaiable and accessible my members.
</div>

<?php
	showFooter();
?>