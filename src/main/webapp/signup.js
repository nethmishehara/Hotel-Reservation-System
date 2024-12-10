function validatePassword() {

    var password = document.getElementById("pwd").value;
    var confirmPassword = document.getElementById("cfm_pwd").value;

	if(password === "" || confirmPassword === "")
   	{
		   alert("Please Enter a password..");
	   }

    else if (password === confirmPassword) {
        alert("Successful! Passwords match.");
   	}

    else {
        alert("Unsuccessful! Passwords do not match.");
        document.getElementById("pwd").value = "";
        document.getElementById("cfm_pwd").value = "";
    }
}
