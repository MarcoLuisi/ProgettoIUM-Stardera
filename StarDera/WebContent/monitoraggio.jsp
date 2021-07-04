<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!--  <script src="script/Ricerca.js"type="text/javascript"></script>-->

  
<link rel="stylesheet" href="css/Monitoraggio.css" type="text/css">







<script type="text/javascript"> 

function FunzioneMonitoraggio()   {
	 
	 
	   
	 var citta='<%= request.getParameter("citta")%>';
	   
	   
	   
	   
	   var data;
	   var xhr = new XMLHttpRequest();
	   xhr.onreadystatechange = function() {
	       if (xhr.readyState == 4 && xhr.status==200) {

	    	   
	    	  
	    	   
	           data = xhr.responseText;
	           var object=JSON.parse(data);
	           
	             
	           var table =$(
          				"<table class = 'table table-responsive'>" +
          				"<thead>" +
          				 "<tr>" +
                        "<th>Id</th>"+
                        "<th>Data Osservazione</th>"+
                        "<th>Orario Osservazione</th>"+
						"<th>Città</th>" +
                        "<th>Indirizzio</th>" +
                        "<th>Località</th>" +
                        "<th>Fonti Luminose</th>" +
                        "<th>Magnitudine Limite</th>" +
                        "<th>Brillanza Totale</th>"+
                        "<th>Livello Inquinamento luminoso </th>" +
                        "<th>Utente</th>"+
                   		"</tr>"+
                   		"</thead>" +
                   		"<tbody>" +
                   		"<tr id='riga1'></tr>" +
                   		"<tr id='riga2'></tr>" +
                   		"<tr id='riga3'></tr>" +
                   		"<tr id='riga4'></tr>" +
                   		"<tr id='riga5'></tr>" +
                   		"<tr id='riga6'></tr>" +
                   		"<tr id='riga7'></tr>" +
                   		"<tr id='riga8'></tr>" +
                   		"<tr id='riga9'></tr>" +
                   		"<tr id='riga10'></tr>" +
                   		"</tbody>" +
                   		"</table>"
               ); 
	        	
	           if(data!=="[]"){
		        	
	        	   $('.emp-profile').append(table);
	        	   document.getElementById("errorM").style.visibility = "hidden"
	        	   document.getElementById("msg").innerHTML=""
	        		   document.getElementById("msg1").innerHTML=""
	           }else{
	        	   document.getElementById("errorM").style.visibility = "visible"
	        	   document.getElementById("msg").innerHTML="Nel riquadro sottostante vengono mostrati i valori relativi allo stato di inquinamento luminoso."
	        		   document.getElementById("msg1").innerHTML="In caso di errore di sintassi o di mancanza di dati nella città digitata non verrà visualizzato alcun valore."
	           }
	           

	           var num = 0;
	           for(x in object){
	        	 
	        	 
	                	 
	           		var card = $(
	           				
	           				"<td>" + object[x].id + "</td>" +
	           				"<td>" + object[x].data + "</td>" +
	           				"<td>" + object[x].ora + "</td>" +
	           				"<td>" + object[x].città + "</td>" +
	           				"<td>" + object[x].indirizzo + "</td>" +
	           				"<td>" + object[x].località + "</td>" +
	           				"<td>" + object[x].fontiLuminose + "</td>" +
	           				"<td>" + object[x].magnitudineLimite + " mag" + "</td>" +
	           				"<td>" + object[x].brillanzaTotale + " mag/arcsec2"  + "</td>" +
	           				"<td>" + object[x].livello + "</td>" +
	           				"<td>" + object[x].username + "</td>"
	                     
	                ); 
	           		
	           		
	           	   if(num==0) $("#riga1").append(card);
	               if(num==1) $("#riga2").append(card);
	               if(num==2) $("#riga3").append(card);
	               if(num==3) $("#riga4").append(card);  
	               if(num==4) $("#riga5").append(card);  
	               if(num==5) $("#riga6").append(card);  
	               if(num==6) $("#riga7").append(card);  
	               if(num==7) $("#riga8").append(card);  
	               if(num==8) $("#riga9").append(card);  
	               if(num==9) $("#riga10").append(card);  
	              
	               num++;
	           }
	         
	          
	         
	           $("#MediaM").append("<span class='datiMedia'>"+object[x].mediaMagnitudine+ " mag" + " "+"("+object[x].significatoM+")"+"</span>");
	           $("#MediaB").append("<span class='datiMedia'>"+object[x].mediaBrillanza+ " mag/arcsec2" + " "+"("+object[x].significatoB+")"+"</span>");
	           $("#MediaL").append("<span class='datiMedia'>"+object[x].mediaLivello+"</span>");
	       }
	   }

	   var url="./Monitoraggio?citta="+citta+"";
	   xhr.open("GET", url, true);
	   xhr.setRequestHeader("connection", null);
	   xhr.send(null);
}

</script>



<title>Monitoraggio</title>
</head>
<body onload="FunzioneMonitoraggio()"> 

<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-3 col-sm-4 col-md-4 col-5"> <a href="index.jsp" class="brand-wrap" data-abc="true">
                     <span class="logo"><img class="logoimg" src="fotocielo/logo.png" height=75px width=75px></span> </a> </div>
                <div class="col-lg-4 col-xl-5 col-sm-8 col-md-4 d-none d-md-block">
                   
                </div>
                    <div class="col-lg-5 col-xl-4 col-sm-8 col-md-4 col-7">
                    <div class="d-flex justify-content-end"> 
						<span class="vl"> </span>
						
						 <%Boolean loggedUser = (Boolean) session.getAttribute("isLog");
                   			 if(loggedUser!=null && loggedUser==true){%>
						  				<a href="utente.jsp" class="brand-wrap" data-abc="true"> <span class="login">  <img class="loginimg" src="fotocielo/user.png" height=40px width=40px></span> </a>
							  <%}  
                   			 
                   			 if((loggedUser==null || loggedUser==false)){%>
								       <a href="login.jsp" class="brand-wrap" data-abc="true"> <span class="login">  <img class="loginimg" src="fotocielo/login.png" height=40px width=40px></span> </a>
                    		   <%}%>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
    <nav class="navbar navbar-expand-md navbar-main border-bottom">
        <div class="container-fluid">
           
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#dropdown6" aria-expanded="false"> <span class="navbar-toggler-icon"></span> </button>
            <div class="navbar-collapse collapse" id="dropdown6" style="">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown"> <a class="nav-link" onclick="onAnalisiClick()" href="./analisi.jsp" data-toggle="dropdown" data-abc="true" aria-expanded="false">ANALISI</a>
                       <!-- <div class="dropdown-menu"> <a class="dropdown-item" href="" data-abc="true">Lenovo</a> <a class="dropdown-item" href="" data-abc="true">Dell</a> <a class="dropdown-item" href="" data-abc="true">HP</a> <a class="dropdown-item" href="" data-abc="true">Apple</a> </div>-->
                    </li>
                    <li class="nav-item"> <a class="nav-link" href="./monitoraggio.jsp" data-abc="true">MONITORAGGIO</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="./classifica.jsp" data-abc="true">CLASSIFICHE UTENTI</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="./notizia.jsp" data-abc="true">NOTIZIE/EVENTI</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="./chisiamo.jsp" data-abc="true">CHI SIAMO</a> </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<br>

<div class="container emp-profile"> 

<h4 style="text-align:center; font-family: Verdana, Geneva, sans-serif;
	font-weight: 550;">MONITORAGGIO DELLO STATO DI INQUINAMENTO LUMINOSO</h4>

<hr class="line">



 <div class="barra">
                    <form   class="search-wrap">
                        <div class="input-group w-100"> <input type="text" id="citta" name = "citta" class="form-control search-form" style="width:55%;" placeholder="Digita la città da monitorare">
                            <div class="input-group-append"> <button class="btn btn-primary search-button" id="submitbutton"   type="submit"> <i class="fa fa-search"></i> </button> </div>
                        </div>
                    </form>
                </div>
                
                <div id="errorM" class="shadow p-3 mb-5 rounded" style="margin-top:-20px; margin-bottom:30px; text-align:center; ">
         <div id="msg" style="text-align:center;"></div>      
         <div id="msg1" style="text-align:center; "></div>   
                </div>
                
   <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Media Magnitudine Limite</h6>
                    </div>
                    
                    <div id = "MediaM" class="col-sm-9 text-secondary">
                    
                    </div>  
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Media Brillanza Totale</h6>
                    </div>
                    
                    <div id = "MediaB" class="col-sm-9 text-secondary">
                   
                    </div> 
                  </div>
                  
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Media Livello Inquinamento Luminoso</h6>
                    </div>
                    
                    <div id = "MediaL" class="col-sm-9 text-secondary">
                   
                    </div> 
                  </div>
                 
                </div>
              </div>    
              </div>          






<!-- 

      
      <table class="table table-responsive">
         <thead>
                    <tr>
                        <th>Id</th>
                        <th>Data Osservazione</th>
                        <th>Orario Osservazione</th>
                        <th>Città</th>
                        <th>Indirizzio</th>
                        <th>Località</th>
                        <th>Fonti Luminose</th>
                        <th>Magnitudine Limite</th>
                        <th>Brillanza Totale</th>
                        <th>Livello Inquinamento luminoso </th>
                        <th>Utente</th>
                    </tr>
                </thead>
                <tbody>
                    <tr id="riga1">
                        
                    </tr>
                    <tr id="riga2">
                        
                    </tr>
                    <tr id="riga3">
                        
                    </tr>
                    <tr id="riga4">
                        
                    </tr>
                    
                    <tr id="riga5">
                       
                    </tr>
                    
                    <tr id="riga6">
                        
                    </tr>
                    
                    <tr id="riga7">
                     
                    </tr>
                    
                    <tr id="riga8">
                        
                    </tr>
                    
                    <tr id="riga9">
                        
                    </tr>
                    
                    <tr id="riga10">
                        
                    </tr>
                    
                    
                </tbody>
      </table>
     
 -->
</div>





<footer class="footer">
<div class="container bottom_border">
<div class="row">
<div class=" col-sm-4 col-md col-sm-4  col-12 col">
<h5 class="headin5_amrc col_white_amrc pt2">Contattaci</h5>
<!--headin5_amrc-->
<p class="mb10">Orari: 7:00-22:00</p>
<p><i class="fa fa-location-arrow"></i> Viale Virgilio, 80123, Napoli </p>
<p><i class="fa fa-phone"></i>  341-291-3400  </p>
<p><i class="fa fa fa-envelope"></i> StarDera@gmail.com  </p>


</div>


<div class=" col-sm-4 col-md  col-6 col">
<h5 class="headin5_amrc col_white_amrc pt2">Link utili</h5>
<!--headin5_amrc-->
<ul class="footer_ul_amrc">
<li><a href="https://it.wikipedia.org/wiki/Inquinamento_luminoso">Inquinamento luminoso</a></li>
<li><a href="https://www.lightpollutionmap.info/#zoom=4.00&lat=45.8720&lon=14.5470&layers=B0FFFFFFTFFFFFFFFFF">Consulta dati</a></li>
<li><a href="https://www.inquinamento-italia.com/impatto-ambientale-dell-inquinamento-luminoso-del-cielo-notturno-su-astronomia/">Impatto ambientale</a></li>
<li><a href="http://www.inquinamentoluminoso.it/cinzano/papers.html">Articoli scientifici</a></li>
<li><a href="https://www.lifegate.it/inquinamento-luminoso-cause-e-conseguenze">Cause e conseguenze</a></li>
</ul>
<!--footer_ul_amrc ends here-->
</div>


<div class=" col-sm-4 col-md  col-6 col">
<h5 class="headin5_amrc col_white_amrc pt2">Collaborazioni</h5>
<!--headin5_amrc-->

<ul id ="partner" class="footer_ul_amrc">

<li><img class="nasaimg" src="fotocielo/nasa.png" height=50px width=60px></li>
<li><img class="esaimg" src="fotocielo/esa.png" height=50px width=50px></li>


</ul>
<!--footer_ul_amrc ends here-->
</div>


<div class=" col-sm-4 col-md  col-12 col">
<h5 class="headin5_amrc col_white_amrc pt2">Seguici</h5>
<!--headin5_amrc ends here-->

<ul id ="social" class="footer_ul2_amrc">
<li><a href="#"><i class="fa fa-facebook"></i> </a></li>
<li><a href="#"><i class="fa fa-twitter"></i> </a></li>
<li><a href="#"><i class="fa fa-google"></i> </a></li>
</ul>
<!--footer_ul2_amrc ends here-->
</div>
</div>
</div>



</footer>





<script>

function onAnalisiClick(){

    var utente = <%=loggedUser%>

        if(utente==null|| utente===false){
            alert("Devi effettuare il login per accedere alla sezione Analisi");
            window.location.href = "login.jsp";
        }else{
        	 window.location.href = "analisi.jsp";
        }
}

</script>







</body>
</html>