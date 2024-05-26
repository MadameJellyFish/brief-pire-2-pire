# Règles de gestion

## Gestion des utilisateurs

### Un Visiteur
- Un Visiteur n'est pas tenu de posséder un compte
- Un Visiteur peut consulter les formations disponibles
- Un Visiteur peut voir les descriptions des Formations
- Un Visiteur peut s'inscrire et créer un compte pour accéder à des fonctionnalités supplémentaires

### Un Apprenant
- Un Apprenant contient un prénom, un nom,une date de naissance, une adresse, une adresse mail et un mot de passe
- Un Apprenant hérite des droits du Visiteur
- Un Apprenant est un Visiteur qui s'a inscrit sur la plataforme
- Un Apprenant peut se désinscrire de la plateforme
- Un Apprenant peux s'inscrire à zéro ou plusieurs Formations

#### Gestion des Formations
- Une Formation a un nom, une description et un statut
- Un Apprenant peut valider une formation si tous les Modules ont l'état OK

#### Gestion des Modules
- Un Module contient un numéro de Module sous forme de version sémantique, un titre, un objectif pédagogique et un statut
- Un Apprenant est évalué pour chaque Module
- Un Apprenant peut valider un Module si tous les Leçons ont l'état OK

#### Gestion des Leçons
- Un Leçon contient un numéro de Module sous forme de Semantic Versionning, une image, un text et une video, 
- Un Apprenant est évalué pour chaque Leçon
- Un Apprenant peut arbitrairement valider les Modules de leur choix en un clic

### Un Formateur
- Un Formateur est caractérisé par un code, un nom, un prénom, une adresse mail et un mot de passe
- Un Administrateur hérite des droits de l'Apprenant
- Un Formateur doit obtenir une invitation de la part d'un Administrateur pour s'inscrire en tant que Formateur sur la plateforme
- Un Formateur peut être desactivé, mais les Leçons qu'il a créé ne sont pas supprimées avec leur compte
- Un Formateur peut être aussi un Apprenant
- Un Formateur peut s'inscrire et suivre zéro ou plusieurs Formations

#### Gestion des Formations
- Un Formateur peut créer un ou plusieurs Formations
- Un Formateur peut éditer une Formation
- Un Formateur peut ajouter un ou plusieurs Tags
- Une Formation possède un statut (Brouillon, Publié, Archivé)

#### Gestion des Modules 
- Un Formateur est auteur ou collaborateur de zéro ou plusieurs Modules
- Un Formateur peut supprimer un Module s'il n'a ni Leçons ni Etudiants inscrits 

#### Gestion des Leçons
- Un Formateur est auteur de zéro ou plusieurs Leçons
- Un Formateur peut créer zéro ou plusieurs Leçons
- Un Formateur peut ajouter une statut à une Leçon qu'il a crée
    ◦ Brouillon : La Leçon est en cours de création et n'est pas prête à être publiée. Elle peut être éditée ou supprimée à tout moment
    ◦ Publié : La Leçon est disponible pour que les Apprenants la suivent. Elle peut être éditée uniquement s'il n'y a aucun Apprenant actuellement inscrit
    ◦ Archivé : La Leçon a été retirée de la vue publique, mais peut toujours être consultée par le Formateur. Elle peut être éditée, publié  ou supprimée

#### Gestion des Tags
- Un Tag contient un intitulé
- Un Tag peut contenir un ou plusieurs Formations
- Le Tag est au niveau de la Formation
- Un Formateur peut créer une Tag
- Un Formateur peut associer un ou plusieurs Tags à une Formation à laquelle il collabore

### Un Administrateur
- Un Administrateur est caractérisé par un nom, un prénom, une adresse mail et un mot de passe
- Un Administrateur hérite des droits de l'Apprenant
- Un Administrateur hérite des droits du Formateur
- Un Administrateur peut créer un Formateur
- Un Administrateur peut editer un Formateur
- Un Administrateur peut activer ou desactiver un Formateur
- Un Administrateur peut changer le statut d'une Formation pour la rendre disponible (Publié) ou non disponible (Archivé)
