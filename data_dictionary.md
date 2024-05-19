# Dictionnaire des données

| Entité  | Attribut         | Type de données | Longueur | Contraintes                         | Description                                          | Exemple                                     |
|---------|------------------|-----------------|----------|-------------------------------------|------------------------------------------------------|--------------------------------------------|
| admins  | admin_id         | UUID            | 36       | Unique, Not null, Primary Key       | Identifiant unique de l'admin                        | "f47ac10b-58cc-4372-a567-0e02b2c3d479"     |
|         | admin_firstname  | VARCHAR         | 50       | Not null                            | Prénom de l'administrateur                           | "Beatriz"                                   |
|         | admin_lastname   | VARCHAR         | 50       | Not null                            | Nom de famille de l'administrateur                   | "Dupont"                                    |
|         | admin_email      | VARCHAR         | 250      | Not null, Unique                    | E-mail de l'administrateur                           | "admin-ecole@gmail.com"                     |
|         | admin_password   | VARCHAR         | 250      | Not null                            | Mot de passe de l'administrateur                     | "Azerty123!"                                |
| courses | course_id        | INT             | -        | Not null, Unique, Primary Key       | Identifiant unique de la formation                   | 101                                         |
|         | course_title     | VARCHAR         | 250      | Not null                            | Titre du cours                                       | "Apprenez à programmer avec JavaScript"     |
|         | course_description| VARCHAR        | 250      | Not null                            | Description du cours                                 | "Maîtrisez les bases de la programmation JavaScript et sa logique de programmation en réalisant un site web dynamique"           |
|         | isValidated      | BOOL            | -        | Not null                            | Indique si la formation a été validée ou non         | true                                        |
| students| student_id       | UUID            | 36       | Unique, Not null, Primary Key       | Identifiant unique de l'étudiant                     | "8rfac10b-58cc-4372-a567-0e02b2c3d436"     |
|         | student_firstname| VARCHAR         | 50       | Not null                            | Prénom de l'étudiant                                 | "Timothée"                                  |
|         | student_lastname | VARCHAR         | 50       | Not null                            | Nom de famille de l'étudiant                         | "Dupont"                                    |
|         | birth_date       | DATE            | -        | Not null                            | Date de naissance de l'étudiant                      | "1988-03-28"                                |
|         | street_name      | VARCHAR         | 250      | Not null                            | Numéro et nom de la rue                              | "42 rue Professeur Grignard"                |
|         | zip_code         | INT             | 10       | Not null                            | Code postal de l'adresse                             | 69007                                       |
|         | country          | VARCHAR         | 50       | Not null                            | Pays de l'adresse                                    | "France"                                    |
|         | membership       | VARCHAR         | 250      | Not null                            | Type d'adhésion                                      | "Free"                                      |
|         | student_email    | VARCHAR         | 250      | Not null, Unique                    | E-mail de l'étudiant                                 | "tim120@gmail.com"                          |
|         | student_password | VARCHAR         | 250      | Not null                            | Mot de passe de l'étudiant                           | "Mar!po$a8Tra!c!on3rA"                      |
| tags    | tag_title        | VARCHAR         | 50       | Unique, Primary Key                 | Titre de tag utilisé pour catégoriser une formation  | "Développement"                             |
| images  | image_id         | INT             | -        | Not null, Unique, Primary Key       | Identifiant unique de l'image                        | 206                                         |
|         | image_name       | VARCHAR         | 255      | Not null, Unique                    | Nom unique de l'image                                | "intro js"                                  |
|         | path             | VARCHAR         | 500      | Not null, Unique                    | Chemin d'accès unique au fichier de l'image          | "/img/intro_js.jpg"                         |