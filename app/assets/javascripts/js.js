function notification(){
	if (window.Notification && Notification.permission !== "denied") {
	  Notification.requestPermission(function(status) { // status is "granted", if accepted by user
	  function audioNotification(){
	    var thisSound = new Audio('downloads/alerts.mp3');
	    thisSound.play();
	}
	    var n = new Notification('Update:', {
	      body: 'Patient has started surgery',
	      //body: 'Patient is in surgery',
	      //body: 'Patient is out of surgery',
	       //sound: 'audio/alert.mp3'
	    });
	  });
	}
}

function replace(id, x){
	var str = document.getElementById(id).innerHTML;
	var ret = str.replace("rep", x);
	document.getElementById(id).innerHTML = ret;
}

function status(s){
    if (s == "working1") {
        document.getElementById("bar").src = "/Users/sylee/Desktop/ruby_tutorial/app/assets/images/bar1.png";
    }
    if (s == "working2") {
        document.getElementById("bar").src = "/Users/sylee/Desktop/ruby_tutorial/app/assets/images/bar2.png";
    }
    if (s == "finish") {
        document.getElementById("bar").src = "/Users/sylee/Desktop/ruby_tutorial/app/assets/images/bar3.png";
    }
}

function grey(yes, id){
	if(yes=="yes"){
    	document.getElementById(id).style.color = "grey";
    }

}