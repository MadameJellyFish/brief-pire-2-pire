Le diagramme de séquence décrit le processus d'inscription d'un étudiant à un cours sur la plateforme de formation en ligne. 

Le scénario commence par la navigation de l'étudiant vers la page des cours. Le front-end de l'application demande ensuite la liste des cours disponibles à l'API, qui récupère ces informations de la base de données et les retourne au front-end. Une fois la liste des cours affichée, l'étudiant sélectionne un cours et le front-end demande les détails du cours à l'API. L'API récupère la description du cours de la base de données et la retourne au front-end pour affichage.

Si l'étudiant décide de s'inscrire au cours, il clique sur le bouton d'inscription. Le front-end envoie alors une requête d'inscription à l'API, qui enregistre l'inscription dans la base de données et confirme l'enregistrement. Enfin, le front-end affiche la confirmation de l'inscription et donne accès au cours.

Ce diagramme de séquence illustre de manière détaillée les interactions entre les différentes composantes du système (étudiant, front-end, API, et base de données) pour accomplir la tâche d'inscription à un cours.

![Diagramme de séquence d'inscription au cours](/assets/imgs/sequence-diagram-enrolle-course.jpg)