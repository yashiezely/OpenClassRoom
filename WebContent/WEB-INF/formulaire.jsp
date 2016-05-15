<%@ page pageEncoding="UTF-8" %>

<!--taglib permet d'afficher nom et mail de manière sécurisé et ça a permis d'afficher les couleur du texte lié aux messages d'erreurs-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>TitreOngletInscription</title>
        <link type="text/css" rel="stylesheet" href="style.css" />
    </head>
    <body>
        <form method="post" action="cheminURL">
            <fieldset>
                <legend>Titre Page d'Inscription</legend>
                <p>Vous pouvez vous inscrire via ce formulaire.</p>
                <label for="email">Adresse email <span class="requis">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${param.email}"/>" size="20" maxlength="60" />
                
             <!-- affichage message d'erreur pour le champs mail -->
                <span class="erreur">${erreurs['email']}</span>
                
                <br />

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
               
               <span class="erreur">${erreurs['motdepasse']}</span>
               
                <br />

                <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
                
                <span class="erreur">${erreurs['confirmation']}</span>
                
                <br />

                <label for="nom">Nom d'utilisateur</label>
                <input type="text" id="nom" name="nom" value="<c:out value="${param.nom}"/>" size="20" maxlength="20" />
               
               <span class="erreur">${erreurs['nom']}</span>
               
                <br />

                <input type="submit" value="Inscription" class="sansLabel" />
                <br />
            </fieldset>
        </form>
    </body>
</html>