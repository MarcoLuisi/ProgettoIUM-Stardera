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
  
<link rel="stylesheet" href="css/Notizia.css" type="text/css">
<!--  <script src="script/Ricerca.js"type="text/javascript"></script>-->
<title>Notizie/eventi</title>





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
                        <div class="input-group w-100"> <input type="text" id="citta" name = "citta" class="form-control search-form"  placeholder="Digita la città per ricercare i punti di osservazione">
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


<div class="container emp-profile"> 

<h4 style="text-align:center;">NOTIZIE/EVENTI</h4>

<hr class="line">


    <div class="container py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
            <img src="fotocielo/notizia1.jpg" class="card-img">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h3 class="card-title">Inquinamento luminoso e lockdown</h3>
              <p class="card-text">Gli studiosi dell’Osservatorio Regionale Inquinamento Luminoso, appartenenti ad ARPAV e all’Università di Padova, hanno studiato l’effetto dei provvedimenti di lockdown per il Coronavirus sul cielo notturno la cui visibilità risulta oggi compromessa dalla grande quantità di luce artificiale emessa e riflessa verso l’alto, che causa un rilevante inquinamento luminoso nei luoghi abitati.</p>
              <p class="card-text">Analizzando i dati provenienti dalle centraline fisse di monitoraggio della brillanza del cielo notturno operanti sul territorio della regione Veneto, e sfruttando anche modelli di simulazione,  si è quantificato la riduzione dell’inquinamento luminoso dovuta in particolare alla riduzione dei flussi luminosi notturni emessi dal traffico veicolare e dallo spegnimento dell’illuminazione dei campi sportivi. </p>
              <p class="card-text"><small class="text-muted">1 Luglio 2020</small></p>
            </div>
          </div>

        </div>
      </div>
    </div>
  
 
 
     <div class="container py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
            <img src="fotocielo/notizia2.jpg" class="card-img">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h3 class="card-title">Proxima Centauri: vicina ed inospitale</h3>
              <p class="card-text">La stella più vicina al Sole è conosciuta nel mondo scientifico come Proxima Centauri, appartiene alla costellazione del Centauro ed è presente nei cieli dell’emisfero australe. Essa possiede un sistema planetario associato, formato fin ora da Proxima b e Proxima c. </p>
              <p class="card-text">Tutto ciò la rende il candidato ideale per lo studio della vita stellare e per l’osservazione esoplanetaria, grazie ai metodi dei transiti e delle velocità radiali. Da studi recenti eruzioni 100 volte più brillanti e violente di quelle solari complicano il lavoro degli astrobiologi e di chi pensa che la “vita” per come la conosciamo possa essere un fenomeno facilmente riproducibile.</p>
              <p class="card-text"><small class="text-muted">15 Giugno 2021</small></p>
            </div>
          </div>

        </div>
      </div>
    </div>
  
    
    <div class="container py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
            <img src="fotocielo/notizia3.jpg" class="card-img">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h3 class="card-title">Astrofilo brasiliano scopre un asteroide</h3>
              <p class="card-text">Un “astronomo dilettante” brasiliano ha scoperto un grande asteroide “potenzialmente pericoloso” che è passato in sicurezza dalla Terra questa settimana giovedì 10 settembre. L’ asteroide , chiamato 2020 QU6, misura circa 3.280 piedi (1.000 metri) di larghezza. </p>
              <p class="card-text"> Leonardo Amaral stava scansionando i cieli la notte del 27 agosto, fotografando una regione nella costellazione dell’Indiano. Amaral ha utilizzato il riflettore di 0,3 metri presso l’osservatorio Campo dos Amarais vicino a Sau Paulo, in Brasile. L’osservatorio ha ricevuto un recente aggiornamento grazie a una borsa di studio della Planetary Society.</p>
              <p class="card-text"><small class="text-muted">12 Giugno 2021</small></p>
            </div>
          </div>

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