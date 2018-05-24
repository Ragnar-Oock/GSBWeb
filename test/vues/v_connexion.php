	<div id="contenuConnection">
		<form name="frmIdentification" method="POST" action="index.php?choixTraitement=connexion&action=valideConnexion">
	      <fieldset><legend>Identification utilisateur</legend>
					<p>
	         <input id="login" type="text" name="login" size="30" maxlength="45" placeholder="Nom Utilisateur">
	        </p>
	        <p>
	          <input id="mdp" type="password" name="mdp" size="30" maxlength="45" placeholder="Mot de Passe">
	        </p>
	        <p id="boutonConnextion">
						<input type="submit" 	name="valider"		value="Valider">
						<input type="reset" 	name="annuler" 		value="Annuler">
					</p>
	      </fieldset>
		</form>
	</div>
</div>
