

function showDetails()
{
    var det = document.getElementById("r1");
    if (det.style.display== "block"){
        det.style.display = "none";
        document.getElemenetById("show").value ='show prices';
}
else {
    det.style.display ="block";
    document.getByElementId("show").value ='hide prices';
}

}

function showDetails1()
{
    var det1 = document.getElementById("r2");
    if (det1.style.display== "block"){
        det1.style.display = "none";
        document.getElemenetById("details1").value="hide prices";
}
else {
    det1.style.display ="block";
    document.getByElementId("details1").value ='show prices';
}

}
function showDetails2()
{
    var det1 = document.getElementById("r3");
    if (det1.style.display== "block"){
        det1.style.display = "none";
        document.getElemenetById("details2").value="hide prices";
}
else {
    det1.style.display ="block";
    document.getByElementId("details2").value ='show prices';
}

}
function showDetails3()
{
    var det1 = document.getElementById("r4");
    if (det1.style.display== "block"){
        det1.style.display = "none";
        document.getElemenetById("details3").value="hide prices";
}
else {
    det1.style.display ="block";
    document.getByElementId("details3").value ='show prices';
}

}

function login()
{
    if(document.getElementById("name").value == "")
    {
        alert("Lognin Unsucceefull");
    }

    else if(document.getElementById("password").value == "")
    {
        alert("Lognin Unsucceefull");
    }
  }