/**
 * 
 */
function showDetails(){
    var form = document.getElementById("form");
    if(form.style.display == "block"){
        form.style.display = "none"
    }
    else{
        form.style.display = "block";
    }
}

document.addEventListener('DOMContentLoaded', function () {
    var form = document.getElementById('form');

    form.addEventListener('submit', function (event) {

       
        alert('Reservation submitted successfully!');
    });
});



function validation(){
	
	if(document.getElementById("name").value == "")
	{
		alert("Enter your name field");
	}
	
	else if(document.getElementById("address").value == "")
	{
		alert("Enter your address field");
	}
	
	else if(document.getElementById("contact").value == "")
	{
		alert("Enter your Contact field field");
	}
	
	else if(document.getElementById("date").value == "")
	{
		alert("Enter your Date field");
	}
	
	else if(document.getElementById("time").value == "")
	{
		alert("Enter your Time field");
	}
	
	else if(document.getElementById("no").value == "")
	{
		alert("Enter your No of guest field");
	}
	
	else if(document.getElementById("event").value == "")
	{
		alert("Enter your event field");
	}
	
	
}