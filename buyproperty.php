<?php
	session_start();

	include("library.php");

	if(!empty($_SESSION['user'])){
		$email = $_SESSION['user'];
		showHeader("Hands on Property Buy Property", "", 1, $email);
	}else{
		showHeader("Hands on Property Buy Property", "", 0, "");
	}
	loginModal();
	recoverLoginModal();
	signUpModal();
?>
<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:0px">


</div>


<?php
	showFooter();
?>
