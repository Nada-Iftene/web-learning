




<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Projet</title>
	<link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>
	<header>
		<div class="container">
			<h1 class="mini">Projet Web</h1>	
		</div>
		<form method="POST" action="pageHome.php">
		<div class="loginbox container">
		<h3 class="contact">Remplir le formulaire</h3>
			<label>Choix</label><br><br>
		<select name="select">
			<option>Enseignant</option>
			<option>Elève</option>
		</select>
		<br>
		<!--<label>Identificateur</label><br><br>
			<input type="number" name="id"><br>-->

			<label>Nom</label><br><br>
			<input type="text" name="nom" placeholder="Entrer votre nom!"><br>
			<div id="erreurNom" class="wrong"></div>
			<label>Prénom</label><br><br>
			<input type="text" name="prenom" placeholder="Entrer votre prénom!"><br>
			<div id="erreurPrenom" class="wrong"></div>
			<label>Email</label><br><br>
			<input type="email" name="email" placeholder="Enter votre email!"><br>
			<div id="erreurEmail" class="wrong"></div>
            <input type="submit" id="submit" name="submit" value="Envoyer" onclick="Erreur();">
	</div>
</form>
	</header>

<?php 

if (isset($_POST["submit"])) {
	$mqsqli = mysqli_connect("localhost","root","") or die("Erreur");
	mysqli_select_db($mqsqli,"test") or die("La base de donnée est introvable.");
	//$val_id =$_POST["id"];
	$val_nom =$_POST["nom"];
	$val_prenom =$_POST["prenom"];
	$val_email =$_POST["email"];
	 $selected_val = $_POST["select"];


	if ($selected_val == "Enseignant") {

       $ens = mysqli_query($mqsqli,'INSERT INTO enseignants (nom,prenom,email) VALUES
	 	 ("'.$val_nom.'","'.$val_prenom.'","'.$val_email.'") ') or die('Erreur');
	 	
		header('Location: pageEns.php');
		
	}else{
		 $elv = mysqli_query($mqsqli,'INSERT INTO eleves (nom,prenom,address) VALUES
	 	 ("'.$val_nom.'","'.$val_prenom.'","'.$val_email.'") ') or die('Erreur');
		header('Location: pageElv.php');

	}
}
 ?>
</body>
</html>