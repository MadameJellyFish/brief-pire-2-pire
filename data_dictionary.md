| Entité  | Attribut         | Type de données | Longueur | Contraintes      | Description                                          | Exemple                                     |
|---------|------------------|-----------------|----------|------------------|------------------------------------------------------|--------------------------------------------|
| admin   | admin_id          | UUID             |      32            | Unique, Not null        | Identifiant unique de l'admin | "f47ac10b-58cc-4372-a567-0e02b2c3d479" |
|    | firstname         | VARCHAR        | 50       | Not null         | Prénom de l'administrateur               |
| "Beatriz"                                   |
|   | lastname          | VARCHAR        | 50       | Not null         |  Nom de famille d'administrateur                 | "Dupont "                                   |
|    | role              | VARCHAR        | 50       | Not null         |  Admin's role when he logged                |
| admin                                     |
|    | email             | VARCHAR        | 250       | Not null         |  Admin's e-mail                |
| admin-school@gmail.com  |
|    | password          | VARCHAR        | 250       | Not null         |  Admin's password                |
| "Azerty123!"

| course   | course_id          | UUID             | 32
| course   | title         | VARCHAR        | 250       | Not null         | Course's title               |
|                                    |


| admin   | admin_id          | id             |      11                                     |
| student   | firstname         | VARCHAR        | 50       | Not null         | Student's first name when he logged               |
| Timothée |
| student   | lastname          | VARCHAR        | 50       | Not null         | Student's last name when he logged                |
| Dupont |
| student   | birth_date          | DATE        | -       | Not null         | Student's birth date                |
| 1988-03-28 | 
| student   | role              | VARCHAR        | 50       | Not null         | Student's role               |
| student   |
| student   | email             | VARCHAR        | 250       | Not null         | Student's e-mail                |
| tim120@gmail.com  |
| student   | password          | VARCHAR        | 250       | Not null         | Student's password                |
| student  |