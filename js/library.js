/*
function slideShow(){
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();
}
function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000);    
}
*/

// Validate Registration
function validateSignUpForm(){
	var firstName = document.forms['SignUpForm']['firstName'].value;
	var lastName = document.forms['SignUpForm']['lastName'].value;
	var email = document.forms['SignUpForm']['email'].value;
	var phone_num = document.forms['SignUpForm']['phone_num'].value;
	var passWord = document.forms['SignUpForm']['passWord'].value;
	var msg = document.getElementById('signup_msg');
	
	var pattern = /^[0-9a-zA-Z]+$/;
	var patternAlphabetic = /^[a-zA-Z]+$/;
	var phonePattern = /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
	
	// check if all fields are nonempty
	if((firstName == null || firstName == "") ||
		(lastName == null || lastName == "") ||
		(email == null || email == "") ||
		(phone_num == null || phone_num == "") ||
		(passWord == null || passWord == "")
		){
		msg.innerHTML = "Invalid fields found.<br /><br />Name fields must be alphabetical.<br />Email format: abc@abc.com<br />Phone # must be max 10 digits.<br />Password must not be empty.";
		return false;
		
	}
	else{
		if(!firstName.match(patternAlphabetic) || !lastName.match(patternAlphabetic) || !validateEmail(email) || !phone_num.match(phonePattern) || !passWord.match(pattern)){
			msg.innerHTML = "Invalid fields found.<br /><br />Name fields must be alphabetical.<br />Email format: abc@abc.com<br />Phone # must be max 10 digits.<br />Password must not be empty.";
			return false;
		}else
			return true;
	}
	
	return false;
}


// Validate Recover Account Credentials
function recoverLoginAccount(){
	var email = document.forms['RecoverAccountForm']['email'].value;
	var msg = document.getElementById('recover_msg');
	
	
	// check if email and password are nonempty
	if(email == null || email == ""){
		msg.innerHTML = "Invalid email.";
		return false;
	}
	
	// check if email and password are valid
	else{
		
		if(!validateEmail(email)){
			msg.innerHTML = "Invalid email.";
			return false;
		}else
			return true;
	}
	
	
}

// Validate Login Credentials
function validateLoginForm(){
	var email = document.forms['LoginForm']['userName'].value;
	var password = document.forms['LoginForm']['passWord'].value;
	var msg = document.getElementById('login_msg');
	
	var patternPassword = /^[0-9a-zA-Z]+$/;
	
	// check if email and password are nonempty
	if((email == null || email == "") || (password == null || password == "")){
		msg.innerHTML = "Invalid email or password.";
		return false;
	}
	
	// check if email and password are valid
	else{
		
		if(!password.match(patternPassword) || !validateEmail(email)){
			msg.innerHTML = "Invalid email or password.";
			return false;
		}else
			return true;
	}
	
	
}

// Validate New Password Reset
function validateResetPasswordForm()
{
	var password = document.forms['ResetPasswordForm']['password'].value;
	var msg = document.getElementById('resetpassword_msg');
	
	// new password field is empty
	var patternPassword = /^[0-9a-zA-Z]+$/;
	
	if(password == null || password ==""){
		msg.innerHTML = "Invalid new password. Must not be empty."
		return false;
	}
	else{
		
		if(!password.match(patternPassword)){
			msg.innerHTML = "Invalid new password. Must not be empty."
			return false;
		}
		else{
			return true;
		}
			
	}
}

// Validates email
function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
