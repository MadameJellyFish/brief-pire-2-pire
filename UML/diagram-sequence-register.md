Le diagramme de séquence décrit le processus de création d'un compte formateur par un administrateur sur la plateforme de formation en ligne.

Le scénario commence par la navigation de l'administrateur vers la page des formateurs. Le front-end de l'application affiche ensuite un bouton pour ajouter un formateur, sur lequel l'administrateur clique. Le front-end affiche alors un formulaire de création de formateur, que l'administrateur remplit et soumet.

Le front-end envoie les données d'inscription à l'API pour validation. L'API vérifie si l'email du formateur existe déjà dans la base de données. Si l'email n'existe pas, l'API insère les données du formateur dans la base de données et confirme la création du compte. Ensuite, un email de confirmation avec les identifiants est envoyé au formateur, qui le reçoit.

Si l'email existe déjà, une erreur est affichée indiquant que l'email existe déjà.

Ce diagramme de séquence illustre les interactions détaillées entre les différentes composantes du système (administrateur, front-end, API, base de données, service d'email et formateur) pour accomplir la tâche de création d'un compte formateur.

![Diagramme de séquence d'inscription de formateur](/assets/imgs/sequence-diagram-registration-trainer.jpg)