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
		<form method="post" action="pageElv.php">
		<div class="container ens loginbox">
			<h3>Choisir le domaine</h3>
			<select name="slct">
			<option>Culture générale</option>
			<option>Informatique</option>

		   </select>
		   <h3>Nombre de questions</h3>
		   <input type="number" name="numquest">
		   
		   <br>
		   <input type="submit" id="submit" name="ajouter" value="Valider" />
			
		</div>
		<div class="float">
		<h3>La réponse</h3>
		   <input type="text" name="rep">
		   <br>
		   <p>
		   	<?php 
		   	
		   	$mqsqli = mysqli_connect("localhost","root","") or die("Erreur");
	         mysqli_select_db($mqsqli,"test") or die("La base de donnée est introvable.");

		   	
		        
	         if ($_POST) {
	         	for ($i=0; $i < is_integer($_POST["numquest"]) ; $i++) { 
	         	$ques = mysqli_query($mqsqli,'SELECT texte FROM questions') or die('Erreur');
	         
	         }
	         }
	         
	 
	 	      
	 	 ?>
		   </p>
		   </div>
		</form>
	</header>


</body>
</html>