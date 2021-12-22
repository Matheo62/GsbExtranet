<?php
if (!$_SESSION['id'])
    header('Location: ../index.php');
else {
    if(isset($_COOKIE["cookieAccepter"]) || isset($_COOKIE["cookieRefuser"])){
        $_SESSION['$showcookie'] = false;
    }
    else{
        $_SESSION['$showcookie'] = true;
    }
?>
﻿<!DOCTYPE html>
<html lang="fr">
    <head>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://code.jquery.com/jquery.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>
        <title>GSB -extranet</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="assets/profilcss/profil.css" rel="stylesheet">
        <!-- styles -->
        <link href="css/styles.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body background="assets/img/laboratoire.jpg">
        <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.php?uc=connexion&action=sommaire">Galaxy Swiss Bourdin</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
        <li class="active"><a href="index.php?uc=visio&action=inscriptionVisio">M'inscrire à une visio</a></li>       
        <li class="active"><a href="index.php?uc=droit&action=parametreCompte">Paramètre compte</a></li>
        <li class="active"><a href="index.php?uc=produit&action=detailPUtili">Les produits</a></li>
        
       
         
      </ul>
      <ul class="nav navbar-nav navbar-right">
		  <li><a><?php echo $_SESSION['prenom']."  ".$_SESSION['nom']?></a></li>
		  <li><a>Médecin</a></li>
                  <li class="active"><a href="index.php?uc=connexion&action=demandeDeconnexion">Deconnexion</a></li>
       
     </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        
        
        <div class="page-content container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-wrapper">
				<div class="box">
						
                                    <div class="content-wrap">
						<legend>Modifier vos informations erronées : </legend>
							<form method="post" action="index.php?uc=droit&action=modification">
                                                            
							    
                                                            <p style='font-size:15px'>Entrer votre nouveau Mot de Passe :</p>
                                                            <input name="Modifmdp1" class="form-control" type="password" placeholder="Entrer votre nouveau mot de passe ici !"/><br/>
                                                            <input name="Modifmdp2" class="form-control" type="password" placeholder="Confirmer votre mot de passe ici !"/>
                                                            <br/><br/>
                                                            <p style='font-size:15px'>Entrer votre nouveau prénom : </p>
                                                            <input name="prenom" class="form-control" type="text" value="<?php echo $_SESSION['prenom'];?>"/>
                                                            
                                                           <p style='font-size:15px'>Entrer votre nouveau nom : </p> 
                                                           <input name="nom" class="form-control" type="text" value="<?php echo $_SESSION['nom'];?>"/>
                                                            <input type="submit" class="btn btn-primary signup" value="Valider"/><br/><br/>
								
                                                                
                                                            
							</form>
							</br>
						
					</div>	
				</div>
			</div>
		</div>
	</div>
        </div>
<body background="assets/img/laboratoire.jpg">
   </body>
</html>
<?php }?>