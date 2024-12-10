function data(){
    alert("Your Reservation set successfully..");
}



function editbtn(){

    var textbox = document.getElementById("show_no");
    textbox.disabled = false;

    var update = document.getElementById("update_submit");
    if(update.style.display === "none")
    {
        update.style.display = "block";
    }

    else{
        update.style.display = "block";
    }
}



function editbtn1(){

    var textbox = document.getElementById("show_username");
    textbox.disabled = false;

    var update = document.getElementById("update_submit");
    if(update.style.display === "none")
    {
        update.style.display = "block";
    }

    else{
        update.style.display = "block";
    }
}

function editbtn2(){

    var textbox = document.getElementById("show-name");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
}

function editbtn3(){

    var textbox = document.getElementById("show-venue");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
    
}

function editbtn4(){

    var textbox = document.getElementById("show-date");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
}

function editbtn5(){

    var textbox = document.getElementById("show-participant");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
}

function editbtn6(){

    var textbox = document.getElementById("show-event");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
}

function editbtn7(){

    var textbox = document.getElementById("show-start");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
}

function editbtn8(){

    var textbox = document.getElementById("show-end");
    textbox.removeAttribute("readonly");
    textbox.style.backgroundColor = "white";
    textbox.style.color = "black";
}


function updateData(){

    alert("Your data updated successfully..");
}