<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Projet</title>
	<link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>
	<?php 
		$mqsqli = mysqli_connect("localhost","root","") or die("Erreur");
	mysqli_select_db($mqsqli,"test") or die("La base de donnée est introvable.");
	if ($_POST) {
	$val_rep =$_POST["rep"];
	$val_quest =$_POST["quest"];
	$selected_val = $_POST["domaine"];
	 if (!empty($val_rep) AND !empty($val_quest)) {
	 	$rep = mysqli_query($mqsqli,'INSERT INTO questions (domaine,texte,reponse) VALUES
	 	 ("'.$selected_val.'","'.$val_quest.'","'.$val_rep.'") ') or die('Erreur');
	 	
	 	
	 }else echo "Remplir les champs";

	}


	
	 ?>
	<header>
		<div class="container">
			<h1 class="mini">Mini Projet Web</h1>
			
		</div>
		<form method="post" action="pageEns.php">
		<div class="container ens loginbox">
			<h3>Choisir le domaine</h3>
			<select name="domaine">
			<option>Culture generale</option>
			<option>Informatique</option>

		   </select>
		   <h3>La question</h3>
		   <input type="text" name="quest">
		   <h3>La réponse</h3>
		   <input type="text" name="rep">
		   <br>
		   <input type="submit" id="submit" name="ajouter" value="Ajouter" />
			
		</div>
		
			
		</form>
	</header>


</body>
</html>