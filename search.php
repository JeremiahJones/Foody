<head>
<script type="text/javascript">
var $ = function(x){
	return document.getElementById(x);
}
var createXMLHttp = function(){
  //job of this function is to create an XMLHttpRequest object; this helps your js code to send information to a service and get information from a service. 
  //first part of if statement works for all browsers other than IE
  if(window.XMLHttpRequest){
      xHttp = new XMLHttpRequest();
  }else{
      xHttp = new ActiveXObject("Microsoft/XMLHttp");
  } 
  return xHttp;
}
var keyupHandle = function(){
	//this captures whatever user has typed in search box sTerm
	var sTerm = $("sTerm").value;
	var sCat = $("sCat").value;
	var urlOfService = "search.php?sTerm="+sTerm+"&sCat="+sCat;
	//create XmlHttpRrequest object
	//anytime you need to make an AJAX call, make sure to include variable createXMLHttp with the anonymous function defined as above;
	var xmlHttp = createXMLHttp();
	//open opens a connection from js to urlOfService using http method get
	//NOTE:Your url of the page will not change. This call is made by JS in the background and user won't see this request being made
	xmlHttp.open("GET",urlOfService);
	xmlHttp.send();
	//onreadystatechange calls this anonymous function any time state of this AJAX call changes. We will ignore all the previous states and will act when the final state has reached, which is readyState==4. This final state is when service has returned some data to js call. 
	var result='';
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.readyState==4){
			//get data from the service using xmlHttp
			var rows = JSON.parse(xmlHttp.responseText);
			var noOfRows = rows.length;
			for(i=0;i<noOfRows;i++){
				var id = rows[i]["id"];
				var name = rows[i]["name"];
				var price = rows[i]["price"];
				//you could also use result += instead of result = result + 
				result = result + "Name is <a href='details.php?pId="+id+"'>"+name+"</a><br>Price: "+price+"<br><br>";
			}
			$("results").innerHTML = result;
			//console.log(rows);
		}
	}
	
}
//window.onload captures the event on load. Whenever this page is loaded or refreshed, JS will call the following anonymous function
window.onload = function(){
	//$ is just an alias for document.getElementById that we defined earlier
	$("sTerm").onkeyup = keyupHandle;
}
</script>
</head>
<body>
<form method="get" action="search.php">
Category <select name='sCat' id='sCat'>
<option value='0'>All</option>
<option value='1'>Books</option>
<option value='2'>Phones</option>
</select>
<input name='sTerm' type='text' id="sTerm">
<input type='submit' value='Go'>
</form>
<div id="results"></div>