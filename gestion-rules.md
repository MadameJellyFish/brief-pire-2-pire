# Règles de gestion

## Gestion des utilisateurs

### Un visiteur
    - Un visiteur n'est pas tenu de posséder un compte
    - Un visiteur peut consulter les formations disponibles
    - Un visiteur peut voir les descriptions des formations
    - Un visiteur peut s'inscrire et créer un compte pour accéder à des fonctionnalités supplémentaires

### Un apprenant
#### Caractéristiques
    - Un apprenant contient un prénom
    - Un apprenant contient un nom
    - Un apprenant contient date de naissance
    - Un apprenant contient une adresse
    - Un apprenant contient une adresse mail 
    - Un apprenant contient un mot de passe 

#### Statut et Inscription
    - Un apprenant est une visiteur qui s'a inscrit avec succès
    - Un apprenant peut se désinscrire de la plateforme
    - Un apprenant peux s'inscrire à zéro ou plusieurs formations

#### Gestion des Formations
    - Un apprenant peut valider une formation si tous les modules ont l'état OK

#### Gestion des Modules
    - Un apprenant peut choisir de ne pas suivre certains des modules s'il possède déjà les compétences
    - Un apprenant est évalué pour chaque module
    - Un apprenant peut valider un module si tous les leçons ont l'état OK

#### Gestion des Leçons
    - Un apprenant est évalué pour chaque leçon
    - Un apprenant peut arbitrairement valider les modules de leur choix en un clic

### Un formateur
    - Un formateur est caractérisé par un code, un nom, un prénom

#### Permissions et Compte
    - Un formateur doit obtenir une autorisation de la part d'un administrateur pour s'inscrire en tant que formateur sur la plateforme
    - Une fois l'autorisation obtenue, un formateur peut créer et activer un compte formateur
    - Un formateur peut être supprimé, mais les leçons qu'il a créé ne sont pas supprimées avec leur compte
    - Un formateur peut être aussi un apprenant
    - Un formateur peut s'inscrire et suivre zero ou plusieurs formations

#### Gestion des Formations
    - Un formateur peut créer une formation
    - Un formateur peut éditer une formation
    - Un formateur peut supprimer une formation si aucun eleve est inscrit
    - Un formateur peut ajouter un ou plusieurs tags

#### Gestion des Modules 
    - Un formateur est auteur ou collaborateur de zero ou plusieurs modules
    - Un formateur peut supprimer une module s'il n'a ni leçons ni étudiants inscrits 

#### Gestion des Leçons
    - Un formateur est auteur de zero ou plusieurs leçons
    - Un formateur peut créer une leçon
    - Un formateur peut éditer une leçon
    - Un formateur peut supprimer une leçon si elle n'appartient pas à un module
    - Un formateur peut éditer une leçon, à condition qu'aucun étudiant ne soit actuellement en train de suivre cette leçon
    - Un formateur peut supprimer une leçon si elle n'est pas associée à un module actif avec des étudiants inscrits
    - Un formateur peut ajouter une status à une leçon
        ◦ Brouillon : La leçon est en cours de création et n'est pas prête à être publiée. Elle peut être éditée ou supprimée à tout moment
        ◦ Publié : La leçon est disponible pour que les étudiants la suivent. Elle peut être éditée uniquement s'il n'y a aucun étudiant actuellement inscrit
        ◦ Archivé : La leçon a été retirée de la vue publique, mais peut toujours être consultée par le formateur. Elle peut être éditée, publié  ou supprimée
