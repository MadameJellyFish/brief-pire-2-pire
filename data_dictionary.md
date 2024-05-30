# Dictionnaire des données

| Entité  | Attribut         | Type de données | Longueur | Contraintes                         | Description                                          | Exemple                                     |
|---------|------------------|-----------------|----------|-------------------------------------|------------------------------------------------------|--------------------------------------------|
| Admins  | admin_uuid         | UUID            | 36       | Unique, Not null, Primary Key       | Identifiant unique de l'admin                        | "f47ac10b-58cc-4372-a567-0e02b2c3d479"     |
|         | admin_firstname  | VARCHAR         | 50       | Not null                            | Prénom de l'administrateur                           | "Beatriz"                                   |
|         | admin_lastname   | VARCHAR         | 50       | Not null                            | Nom de famille de l'administrateur                   | "Dupont"                                    |
|         | admin_email      | VARCHAR         | 250      | Not null, Unique                    | E-mail de l'administrateur                           | "admin-ecole@gmail.com"                     |
|         | admin_password   | VARCHAR         | 250      | Not null                            | Mot de passe de l'administrateur                     | "Azerty123!"                                |
| Courses | course_id        | SERIAL             | -        | Not null, Unique, Primary Key       | Identifiant unique de la formation                   | 101                                         |
|         | course_title     | VARCHAR         | 250      | Not null                            | Titre du cours                                       | "Apprenez à programmer avec JavaScript"     |
|         | course_description| VARCHAR        | 250      | Not null                            | Description du cours                                 | "Maîtrisez les bases de la programmation JavaScript et sa logique de programmation en réalisant un site web dynamique"           |
|         | course_publishing_state      | VARCHAR            | 50        | Not null                            | Indique le statut de la formation        | "Publié"                                       |
|         | is_valid      | BOOL            | -        | Not null                            | Indique si la formation a été validée ou non         | true                                        |
| Trainers| trainer_uuid       | UUID            | 36       | Unique, Not null, Primary Key       | Identifiant unique du formateur                    | "28fac10b-58cc-5372-f567-ee02b2c3d412"     |
|         | trainer_code       | INT            | 50       | Unique, Not null                  | Code du formateur                    | 89     |
|         | trainer_firstname| VARCHAR         | 50       | Not null                            | Prénom du formateur                                 | "Jean"                                  |
|         | trainer_lastname | VARCHAR         | 50       | Not null                            | Nom de famille du formateur                          | "Pinero"                                    |
|         | trainer_email    | VARCHAR         | 250      | Not null, Unique                    | E-mail du formateur                                | "tim120@gmail.com"                          |
|         | trainer_password | VARCHAR         | 250      | Not null                            | Mot de passe du formateur                            | "redF!AgAttent10n"                      |
|         | trainer_password | VARCHAR         | 250      | Not null                            | Mot de passe du formateur                            | "redF!AgAttent10n"                      |
|         | is_active      | BOOL            | -        | Not null                            | Indique si formateur est active ou non         | true  |
|         | admin_id       | UUID            | 36       | Not null, Foreign Key (référence Admins)       | Identifiant unique de l'admin                   | “f47ac10b-58cc-4372-a567-0e02b2c3d479”     |    
| Students| student_uuid       | UUID            | 36       | Unique, Not null, Primary Key       | Identifiant unique de l'apprenant                      | "8rfac10b-58cc-4372-a567-0e02b2c3d436"     |
|         | student_firstname| VARCHAR         | 50       | Not null                            | Prénom de l'apprenant                                 | "Timothée"                                  |
|         | student_lastname | VARCHAR         | 50       | Not null                            | Nom de famille de l'apprenant                         | "Dupont"                                    |
|         | birth_date       | DATE            | -        | Not null                            | Date de naissance de l'apprenant                      | "1988-03-28"                                |
|         | street_name      | VARCHAR         | 250      | Not null                            | Numéro et nom de la rue                              | "42 rue Professeur Grignard"                |
|         | zip_code         | INT             | 10       | Not null                            | Code postal de l'adresse                             | 69007                                       |
|         | country          | VARCHAR         | 50       | Not null                            | Pays de l'adresse                                    | "France"                                    |
|         | student_email    | VARCHAR         | 250      | Not null, Unique                    | E-mail de l'apprenant                                 | "tim120@gmail.com"                          |
|         | student_password | VARCHAR         | 250      | Not null                            | Mot de passe de l'apprenant                           | "Mar!po$a8Tra!c!on3rA"                      |
| Tags    | tag_title        | VARCHAR         | 50       | Unique, Primary Key                 | Titre de tag utilisé pour catégoriser une formation  | "Développement"                             |
| Images  | image_id         | SERIAL             | -        | Not null, Unique, Primary Key       | Identifiant unique de l'image                        | 206                                         |
|         | image_name       | VARCHAR         | 255      | Not null, Unique                    | Nom unique de l'image                                | "intro js"                                  |
|         | path             | VARCHAR         | 500      | Not null, Unique                    | Chemin d'accès unique au fichier de l'image          | "/img/intro_js.jpg"                         |
| Blocks | block_id        | SERIAL             | -        | Not null, Unique, Primary Key       | Identifiant unique du module                  | 368                                         |
|        | block_num        | INT             | -        | Not null       | Indique le numero de module                 | 5                                         |
|         | block_title     | VARCHAR         | 250      | Not null                            | Titre du module                                       | "Les fonctions en JavaScript"     |
|         | pedagogical_objective     | VARCHAR         | 250      | Not null                            | Objectif pédagogique du module                                       | "Comprendre et utiliser les fonctions en JavaScript"     |
|         | block_status      | VARCHAR            | 2        | Not null                            | Indique l'état du module        | "KO"                                       |
|         | block_publishing_state      | VARCHAR            | 50        | Not null                            | Indique le statut du module        | "Brouillon"                                       |
|         | duration      | TIME            | Heure        | Not null                            | Indique la durée du module        | 36                                       |
| Lessons | lesson_id        | SERIAL             | -        | Not null, Unique, Primary Key       | Identifiant unique de la leçon                 | 254                                         |
|        | lesson_num        | VARCHAR             | -        | Not null       | Indique le numero de la leçon                 | ".2"                                         |
|         | lesson_title     | VARCHAR         | 250      | Not null                            | Titre de la leçon                                       | "Découvrez les fonctions"     |
|         | text     | TEXT         | -      | Not null                            | Texte de la leçon                                       | "Une fonction est un bloc de code auquel on attribue un nom. Appeler cette fonction permet d’exécuter le code qu’elle contient. On parle donc de fonction, car il s’agit d’un bloc de code qui a un rôle spécifique au sein de votre fichier JavaScript."     |
|         | video_url                  | VARCHAR      | 500     | Not null                                  | URL de la vidéo associée à la leçon           | "http://example.com/video"                                                                                   |
|         | lesson_status      | VARCHAR            | 2        | Not null                            | Indique l'état de la leçon        | "OK"                                       |
|         | lesson_publishing_state      | VARCHAR            | 50        | Not null                            | Indique le statut de la leçon        | "Publié"                                       |
|         | trainer_uuid                 | UUID      | -     | Not null, Foreign Key (référence Trainers) | Identifiant du formateur qui a créé la leçon  | “28fac10b-58cc-5372-f567-ee02b2c3d412”            |