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
<link href="http://fonts.cdnfonts.com/css/nasalization-2" rel="stylesheet">
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
<link rel="stylesheet" href="css/HomePage.css" type="text/css">
<!--  <script src="script/Ricerca.js"type="text/javascript"></script>-->
<title>Home page</title>





</head>
<body>

<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-3 col-sm-4 col-md-4 col-5"> <a href="#" class="brand-wrap" data-abc="true">
                     <span class="logo"><img class="logoimg" src="fotocielo/logo.png" height=75px width=75px></span> </a> </div>
                <div class="col-lg-4 col-xl-5 col-sm-8 col-md-4 d-none d-md-block" >
                    <form action="./ricerca.jsp"  class="search-wrap">
                        <div class="input-group w-100" > <input type="text" id="citta" name = "citta" class="form-control search-form" placeholder="Digita la città per ricercare i punti di osservazione">
                            <div class="input-group-append"> <button class="btn btn-primary search-button" type="submit"> <i class="fa fa-search"></i> </button> </div>
                        </div>
                    </form>
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
            <form action="./ricerca.jsp" class="d-md-none my-2">
                <div class="input-group"> <input type="text" id="citta" name = "citta"  class="form-control" placeholder="Ricerca punti" required="">
                    <div class="input-group-append"> <button type="submit" class="btn btn-secondary"> <i class="fa fa-search"></i> </button> </div>
                </div>
            </form> <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#dropdown6" aria-expanded="false"> <span class="navbar-toggler-icon"></span> </button>
            <div class="navbar-collapse collapse" id="dropdown6">
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



<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="fotocielo/slider5.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="fotocielo/slider6.jpeg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="fotocielo/slider7.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<br>

<h4>CONTATORE DI ANALISI EFFETTUATE</h4>


<hr class="line">
<div class="shadow p-3 mb-5 rounded" style="text-align:center; background-color: #ffc107; width:95%; margin: 0 auto;">
	 <h1 style="text-align:center; color:white;  font-size: 75px;">	★		172.53		★</h1> 
</div>




<br>

<h4 style="text-align:center;">I MIGLIORI PUNTI DI OSSERVAZIONE</h4>

<br>

<div class="container">
 


<div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="fotocielo/2.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Parco Virgiliano</h5>
      <p class="card-text">Il parco Virgiliano, detto anche "parco della Rimembranza", è un parco panoramico che sorge nel quartiere Posillipo, a Napoli. <br><br> Disponibilità Telescopi: Si <br> Disponibilità Wi-fi: Si <br> Visibilità stelle: Eccellente </p>
    </div>
    <div style="text-align:center;" class="card-footer">
      <small class="text-muted">Viale Virgilio, 80123 Napoli NA</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="fotocielo/8.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Parco dei Giardini</h5>
      <p class="card-text">Nel Quartiere Navile di Bologna esiste un bellissimo parco: Il Parco dei Giardini, la cui area verde si estende per oltre 11 ettari dove si può passeggiare, giocare, chiacchierare lungo i viali che costeggiano il laghetto. <br><br> Disponibilità Telescopi: Si <br> Disponibilità Wi-fi: Si <br> Visibilità stelle: Eccellente </p>
    </div>
    <div style="text-align:center;" class="card-footer">
      <small class="text-muted">Bologna, Via dei Giardini, 40128 Bologna BO</small>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="fotocielo/11.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Piazzale Michelangelo</h5>
      <p class="card-text">Piazzale Michelangelo a Firenze rappresenta il più famoso punto di osservazione del panorama cittadino, riprodotto in innumerevoli cartoline e meta obbligata dei turisti in visita alla città. <br><br> Disponibilità Telescopi: Si <br> Disponibilità Wi-fi: Si <br> Visibilità stelle: Eccellente </p>
    </div>
    <div style="text-align:center;" class="card-footer">
      <small class="text-muted">Piazzale Michelangelo, 50125 Firenze FI</small>
    </div>
  </div>
</div>
  
  
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