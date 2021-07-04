<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  
<link rel="stylesheet" href="css/Login.css" type="text/css">
<title>Registrazione</title>


<script>

        function validateForm() {

            var email=document.forms["regForm"]["email"].value;
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

            if(!email.match(regex) || email.length==0)
            {
                document.getElementById("emailmsg").innerHTML="Email non valida"
                return false;
            }
            else{
                document.getElementById("emailmsg").innerHTML=""
            }


            var password=document.forms["regForm"]["password"].value;
            if (password.length < 8)
            {
                document.getElementById("passwordmsg").innerHTML="Password non valida"
                return false;
            }

            else{
                document.getElementById("passwordmsg").innerHTML=""
            }

            var nome=document.forms["regForm"]["nome"].value;
            var regex1 = /^([a-zA-Z]+\s)*[a-zA-Z]+$/;

            if (nome.length==0 || !nome.match(regex1))
            {
                document.getElementById("nomemsg").innerHTML="Nome non valido"
                return false;
            }

            else{
                document.getElementById("nomemsg").innerHTML=""

            }

            var cognome=document.forms["regForm"]["cognome"].value;
            var regex2 = /^([a-zA-Z]+\s)*[a-zA-Z]+$/;

            if (cognome.length==0 || !cognome.match(regex2))
            {
                document.getElementById("cognomemsg").innerHTML="Cognome non valido"
                return false;
            }

            else{
                document.getElementById("cognomemsg").innerHTML=""

            }
            
            
            var username=document.forms["regForm"]["username"].value;
            var regex3 = /^[A-Za-z0-9_-]*$/;

            if (username.length==0 || !username.match(regex3))
            {
                document.getElementById("usernamemsg").innerHTML="Username non valido"
                return false;
            }

            else{
                document.getElementById("usernamemsg").innerHTML=""

            }

           

            alert("Registrazione al sito avvenuta con successo");
            return true;

        }

    </script>


</head>
<body>


<header class="section-header">
    <section class="header-main border-bottom">
        
                <div class="col-lg-3 col-sm-4 col-md-4 col-5"> <a href="index.jsp" class="brand-wrap" data-abc="true">
                     <span class="logo"><img class="logoimg" src="fotocielo/logo.png" height=85px width=85px></span> </a> </div>
            
    </section>
	
   
</header>






<div class="container">
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div id="first">
                <div class="myform form ">
                    <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                            <h3 class="textLogin">Registrazione</h3>
                        </div>
                    </div>
                     
                    <form action="Registrazione" method="post" name="regForm" onsubmit="return validateForm()">
                         <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Inserire l'email">
                            <div id="emailmsg" style="color:Red;"></div>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Inserire la password (Minimo 8 caratteri)">
                            <div id="passwordmsg" style="color:Red;"></div>
                        </div>
                        
                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" name="nome" id="nome"  class="form-control" aria-describedby="emailHelp" placeholder="Inserire il nome">
                            <div id="nomemsg" style="color:Red;"></div>
                        </div>

                        <div class="form-group">
                            <label>Cognome</label>
                            <input type="text" name="cognome" id="cognome"  class="form-control" aria-describedby="emailHelp" placeholder="Inserire il cognome">
                            <div id="cognomemsg" style="color:Red;"></div>
                        </div>
                        
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="username" id="username"  class="form-control" aria-describedby="emailHelp" placeholder="Inserire l'username">
                            <div id="usernamemsg" style="color:Red;"></div>
                        </div>

                        <div class="col-md-12 text-center ">
                            <button id="loginsubmit" type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Registrati</button>
                        </div>
                        <div class="col-md-12 ">
                            <div class="login-or">
                                <hr class="hr-or">
                                <span class="span-or">oppure</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <p class="text-center">Hai già un account? <a href="login.jsp" id="signup">Effettua il login qui</a></p>
                        </div>
                    </form>

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
<p class="mb10">Orari: 7:00:00-22:00:00</p>
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












</body>
</html>