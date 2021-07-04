<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ page import="DAO.*, Model.*" %>

<%//check if the user is registered
	Boolean logged = (Boolean) session.getAttribute("isLog");
	if((logged == null) || !logged.booleanValue()){
		response.sendRedirect("login.jsp");
	}%>    
   
 
<jsp:useBean id="session_user" class="Model.Utente" ></jsp:useBean>
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
  
<link rel="stylesheet" href="css/Analisi.css" type="text/css">
<!--  <script src="script/Ricerca.js"type="text/javascript"></script>-->
<title>Analisi</title>

<script>


        function validateForm() {

		   
        	
            var data =document.forms["analisiForm"]["data"].value;
            

            if (data.length==0)
            {
                document.getElementById("datamsg").innerHTML="Data non inserita"
                return false;
            }

            else{
                document.getElementById("datamsg").innerHTML=""
            }
            
            
            
 			var ora =document.forms["analisiForm"]["ora"].value;
            

            if (ora.length==0)
            {
                document.getElementById("oramsg").innerHTML="Orario non inserito"
                return false;
            }

            else{
                document.getElementById("oramsg").innerHTML=""
            }
            
            var città=document.forms["analisiForm"]["città"].value;
            var regex = /^([a-zA-Z]+\s)*[a-zA-Z]+$/;

            if (città.length==0 || !città.match(regex))
            {
                document.getElementById("cittàmsg").innerHTML="Città inserita non valida"
                return false;
            }

            else{
                document.getElementById("cittàmsg").innerHTML=""

            }
            
            var indirizzo=document.forms["analisiForm"]["indirizzo"].value;
            var regex1 = /^[\.a-zA-Z0-9,!? ]*$/;

            if (indirizzo.length==0 || !indirizzo.match(regex1))
            {
                document.getElementById("indirizzomsg").innerHTML="Indirizzo inserito non valido"
                return false;
            }

            else{
                document.getElementById("indirizzomsg").innerHTML=""

            }

            var file = document.forms["analisiForm"]["image"].value;
            if(file == ''){
                document.getElementById("imagemsg").innerHTML="Immagine del cielo non caricata"
                return false;
            }
            else{
                document.getElementById("imagemsg").innerHTML=""
            }

            
            var località = document.forms["analisiForm"]["localita"].value;
            var fontiLuminose = document.forms["analisiForm"]["fontiLuminose"].value;
            
            var brillanza;
            var magnitudine;
            var livello;
            
            
            var magnitudineLimite, brillanzaTotale;
            
            if(località ==="Rurale" && fontiLuminose ==="Assente") {
       	 		magnitudineLimite="6.5 mag";
       	 		magnitudine="Cielo eccezionalmente stellato";
       	 		
       	 		brillanzaTotale="22 mag/arcsec2";
       	 		brillanza="Cielo estremamente buio";
       	 		
       	 		livello="Molto basso";
       	 	}
       	 	
       	 	if(località === "Suburbana" && fontiLuminose === "Assente") {
    	 		magnitudineLimite="6 mag";
    	 		magnitudine="Cielo ampiamente stellato";
    	 		
    	 		brillanzaTotale="21.5 mag/arcsec2";
    	 		brillanza="Cielo mediamente buio";
    	 		
    	 		livello="Basso";
    	 	}
       	 	
       	 	if(località === "Urbana" && fontiLuminose === "Assente"){
    	 		magnitudineLimite="5.5 mag";
    	 		magnitudine="Cielo molto stellato";
    	 		
    	 		brillanzaTotale="21 mag/arcsec2";
    	 		brillanza="Cielo poco luminoso";
    	 		
    	 		livello="Medio-basso";
    	 	}
       	 	
       	 	if(località === "Rurale" && fontiLuminose === "Basso") {
    	 		magnitudineLimite="6 mag";
    	 		magnitudine="Cielo ampiamente stellato";
    	 		
    	 		brillanzaTotale="21.5 mag/arcsec2";
    	 		brillanza="Cielo mediamente buio";
    	 		
    	 		livello="Basso";
    	 	}
       	 	
       	 	if(località==="Suburbana" && fontiLuminose === "Basso") {
    	 		magnitudineLimite="5.5 mag";
    	 		magnitudine="Cielo molto stellato";
    	 		
    	 		brillanzaTotale="21 mag/arcsec2";
    	 		brillanza="Cielo poco luminoso";
    	 		
    	 		livello="Medio-basso";
    	 	}
       	 	
       	 	if(località==="Urbana" && fontiLuminose==="Basso") {
    	 		magnitudineLimite="5 mag";
    	 		magnitudine="Cielo moderatamente stellato";
    	 		
    	 		brillanzaTotale="20.5 mag/arcsec2";
    	 		brillanza="Cielo luminoso";
    	 		
    	 		livello="Medio-alto";
    	 	}
       	 	
       	 	if(località==="Rurale" && fontiLuminose==="Medio") {
    	 		magnitudineLimite="5.5 mag";
    	 		magnitudine="Cielo molto stellato";
    	 		
    	 		brillanzaTotale="21 mag/arcsec2";
    	 		brillanza="Cielo poco luminoso";
    	 		
    	 		livello = "Medio-basso";
    	 	}
    	 	
    	 	if(località==="Suburbana" && fontiLuminose==="Medio") {
    	 		magnitudineLimite="5 mag";
    	 		magnitudine="Cielo moderatamente stellato";
    	 		
    	 		brillanzaTotale="20.5 mag/arcsec2";
    	 		brillanza="Cielo luminoso";
    	 			
    	 		livello= "Medio-alto";
    	 	}
    	 	
    	 	if(località.contentEquals==="Urbana" && fontiLuminos==="Medio") {
    	 		magnitudineLimite="4.5 mag";
    	 		magnitudine="Cielo poco stellato";
    	 		
    	 		brillanzaTotale="20 mag/arcsec2";
    	 		brillanza="Cielo molto luminoso"
    	 		
    	 		livello="Alto";
    	 	}
    	 	
    	 	
    	 	if(località==="Rurale" && fontiLuminose==="Alto") {
    	 		magnitudineLimite="5 mag";
    	 		magnitudine="Cielo moderatamente stellato";
    	 		
    	 		brillanzaTotale="20.5 mag/arcsec2";
    	 		brillanza="Cielo luminoso";
    	 		
    	 		livello="Medio-alto";
    	 	}
       	 	
       	 	if(località==="Suburbana" && fontiLuminose==="Alto") {
    	 		magnitudineLimite="4.5 mag";
    	 		magnitudine="Cielo poco stellato";
    	 		
    	 		brillanzaTotale="20 mag/arcsec2";
    	 		brillanza="Cielo molto luminoso";
    	 		
    	 		livello = "Alto";
    	 	}
       	 	
       	 	if(località==="Urbana" && fontiLuminose==="Alto") {
    	 		magnitudineLimite="4 mag";
    	 		magnitudine="Cielo appena stellato";
    	 		
    	 		brillanzaTotale="19 mag/arcsec2";
    	 		brillanza="Cielo estremamente luminoso";
    	 		
    	 		livello="Molto alto";
    	 	}
       	 

            alert("DATI RACCOLTI CON SUCCESSO \nANALISI DEI DATI: \nMAGNITUDINE LIMITE: " + magnitudineLimite + " " + "("+magnitudine+")" + "\nBRILLANZA TOTALE: " + brillanzaTotale + " " + "("+brillanza+")" + "\nLIVELLO INQUINAMENTO LUMINOSO: " + livello + "\n\nGRAZIE PER IL TUO CONTRIBUTO, CI SARÀ MOLTO D'AIUTO");
            return true;
        }

    </script>




</head>
<body>



<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-3 col-sm-4 col-md-4 col-5"> <a href="index.jsp" class="brand-wrap" data-abc="true">
                     <span class="logo"><img class="logoimg" src="fotocielo/logo.png" height=75px width=75px></span> </a> </div>
                <div class="col-lg-4 col-xl-5 col-sm-8 col-md-4 d-none d-md-block">
                    <form action="./ricerca.jsp"  class="search-wrap">
                        <div class="input-group w-100"> <input type="text" id="citta" name = "citta" class="form-control search-form" placeholder="Digita la città per ricercare i punti di osservazione">
                            <div class="input-group-append"> <button class="btn btn-primary search-button"  type="submit"> <i class="fa fa-search"></i> </button> </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-5 col-xl-4 col-sm-8 col-md-4 col-7">
                    <div class="d-flex justify-content-end"> 
						<span class="vl"> </span>
						  <a href="utente.jsp" class="brand-wrap" data-abc="true"> <span class="login">  <img class="loginimg" src="fotocielo/user.png" height=40px width=40px></span> </a>
                    </div>
                </div>
                    
            </div>
        </div>
    </section>
	
    <nav class="navbar navbar-expand-md navbar-main border-bottom">
        <div class="container-fluid">
            <form action="./ricerca.jsp" class="d-md-none my-2">
                <div class="input-group"> <input type="text" id="citta" name = "citta"  class="form-control" placeholder="Ricerca punti" required="">
                    <div class="input-group-append"> <button type="submit" class="btn btn-secondary"> <i class="fa fa-search"></i> </button> </div>
                </div>
            </form> <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#dropdown6" aria-expanded="false"> <span class="navbar-toggler-icon"></span> </button>
            <div class="navbar-collapse collapse" id="dropdown6" style="">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown"> <a class="nav-link" href="./analisi.jsp" data-toggle="dropdown" data-abc="true" aria-expanded="false">ANALISI</a>
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

<div class="container emp-profile"> 

<h4 style="text-align:center;">ANALISI DEI DATI DI UN'OSSERVAZIONE</h4>

<hr class="line">

<h6 style="text-align:center;">Compilare il seguente modulo con i dati dell'osservazione del cielo notturno che si intende analizzare e utilizzare
il pulsante "Scegli file" per caricare la foto del cielo osservato.  Dopo aver terminato la compilazione e il caricamento, premere il pulsante
"ANALIZZA" per procedere</h6>

<hr class="line">

<form  action="Analisi" onsubmit="return validateForm()" method="post" name = "analisiForm" id="analisiForm">

 <div class="row">
    <div class="col">

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="data">Data Osservazione</label>
      <input type="date" class="form-control" id="data" name="data">
      <div id="datamsg" style="color:Red;"></div>
    </div>
  </div>
  
  <div class="form-row">
   <div class="form-group col-md-6">
    <label for="ora">Orario Osservazione</label>
    <input type="time" class="form-control" id="ora" name="ora">
    <div id="oramsg" style="color:Red;"></div>
  </div>
 </div>
 
  <div class="form-row">
   <div class="form-group col-md-8">
    <label for="città">Città</label>
    <input type="text" class="form-control" id="città" placeholder="Città/Comune" name="citta">
    <div id="cittàmsg" style="color:Red;"></div>
   </div>
  </div>
  
  
  <div class="form-row">
   <div class="form-group col-md-8">
    <label for="indirizzo">Indirizzo</label>
    <input type="text" class="form-control" id="indirizzo" name="indirizzo" placeholder="Via, Numero Civico, CAP">
    <div id="indirizzomsg" style="color:Red;"></div>
   </div>
  </div>
  
  
  <div class="form-row">
   <div class="form-group col-md-6">
    <label for="località">Tipo di località</label>
  	  <div class="form-check">
 	 	<input class="form-check-input" type="radio" name="localita" id="Urbana" value="Urbana" checked>
 	    <label class="form-check-label" for="Urbana">
   		 Urbana
  		</label>
	  </div>
	  
	  <div class="form-check">
  		<input class="form-check-input" type="radio" name="localita" id="Suburbana" value="Suburbana">
  		<label class="form-check-label" for="Suburbana">
   		 Suburbana
  	    </label>
	  </div>
	  
     <div class="form-check">
  		<input class="form-check-input" type="radio" name="localita" id="Rurale" value="Rurale">
  		<label class="form-check-label" for="Rurale">
   		Rurale
  		</label>
	</div>
  </div>
  </div>
  
  
 <div class="form-row">
   <div class="form-group col-md-6">
    <label for="exampleFormControlSelect1">Numero di fonti luminose</label>
    <select name="fontiLuminose" class="form-control" id="sel1">
      <option>Alto</option>
      <option>Medio</option>
      <option>Basso</option>
      <option>Assente</option>
    </select>
  </div>
 </div> 
 
 </div>
  
 <div class="col">
 <div class="fotoAnalisi">
<div class="riquadro" >
  <img id="passport_photo" src="fotocielo/image9.png" alt="image" style="margin-top: -2px; width:235px;height:238px;">
</div>

<img src="fotocielo/upload.png" id="upfile1" style="cursor:pointer" />
 <input type="file" id="image" name="image" style="display:none" accept="image/*">
 <div id="imagemsg" style="color:Red;"></div>
 </div>
</div>
</div>

<input type ="hidden" id="username" name="username" value="${user.username}">

<div class="buttonHolder">
  <button type="submit" class="btn btn-primary">ANALIZZA</button>
</div>
  
 
</form>


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

$("#upfile1").click(function () {
    $("#image").trigger('click');
});

function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();

	    reader.onload = function(e) {
	      $('#passport_photo')
	        .attr('src', e.target.result)
	        .width(235)
	        .height(238);
	      
	    };

	    reader.readAsDataURL(input.files[0]);
	  }
	}
	$("#image").change(function() {
	  readURL(this);
	});

</script> 

</body>
</html>