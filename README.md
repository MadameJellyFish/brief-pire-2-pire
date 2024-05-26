# brief-pire-2-pire
La mission est de concevoir la base de données d’une plateforme de formation en ligne nommée pire2pire.com à l'aide de la méthode MERISE.

# Conception BDD avec MERISE
## Contexte du projet
- Une formation est composée de modules qui sont eux-mêmes composés de leçons.
- Chaque module est organisé en leçons.
- Chaque leçon est caractérisé par un numéro de leçon sous forme de Semantic Versionning, un intitulé, un objectif pédagogique, un contenu (textes, images et vidéos), une durée en heures et un auteur.
- Un module peut faire partie d'une ou plusieurs formations, comme par exemple un pire module "Commandes de base Git" pourrait faire partie d'une pire formation "Frontend Javascript" et "DevOps", voir  plus.
- Une leçon peut faire partie d'une ou plusieurs modules.
- Une leçon peut contenir un texte et/ou une image et/ou une vidéo.
- Une formation peut contenir un ou plusieurs tags.
- Les apprenants peuvent s'inscrire à zero ou plusieurs formations, ils peuvent choisir de ne pas suivre certains des modules s'ils possèdent déjà, par exemple, les compétences. Autrement dit, ils peuvent arbitrairement valider les modules de leur choix en un clic.
- Chaque apprenant est évalué pour chaque module et possède un état de fin de module (OK / KO).
- Une formation est considérée comme terminée lorsque tous les modules ont été validés.
- Chaque apprenant est caractérisé par un numéro d’inscription unique, un nom, un prénom, une adresse et une date de naissance.
- Un formateur collabore ou est auteur d'un module, est auteur d'une leçon, et est caractérisé par un code, un nom, un prénom.

## Livrables
- Un dépôt Github recensant : 
    - Un README explicite et soigné
    - Une définition de l'acronyme MERISE dans le README.md
    - Un dictionnaire de données
    - Des règles de gestion
    - Un MCD
    - Un MLD
    - Un MPD
    - Un script SQL de la base de données

## Definition de MERISE
**M**éthode d'<br/>
**E**tude et de<br/>
**R**éalisation<br/>
**I**nformatique par le<br/>
**S**ystèmes d'<br/>
**E**ntreprise<br/>

La conception de la base de données pour la plateforme de formation en ligne pire2pire.com a été réalisée en me basant sur la méthode Merise. Vous pouvez consulter cette conception en cliquant <a href="database_design.md">ici</a>.