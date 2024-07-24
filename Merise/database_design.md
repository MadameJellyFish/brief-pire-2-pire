# Conception de la base de données pour la plateforme de formation en ligne pire2pire.com

![database design](assets/imgs/database_design.png)

Pour concevoir la base de données de plateforme de formation en ligne pire2pire, j'ai suivi une méthodologie basée sur l'approche Merise. Les étapes quej'ai suivi sont les suivantes :

## 1. Création des Règles de Gestion
La première étape a consisté en la définition des règles de gestion. Ces règles précisent les contraintes et les processus métier qui régissent le fonctionnement du système. Elles incluent des aspects tels que les autorisations des utilisateurs, les états des entités, et les interactions entre différents composants du système.
Ce document peut être consulté en cliquant <a href="/Merise/gestion_rules.md">ici</a>.

## 2. Modèle Conceptuel de Données (MCD)
Une fois les règles de gestion définies, j'ai créé le Modèle Conceptuel de Données (MCD). Le MCD représente de manière abstraite les entités du système et les relations entre elles. Pour cette étape, j'ai utilisé l'outil Looping.
Ce document peut être consulté en cliquant <a href="/assets/imgs//pire-2-pire-mcd.jpg">ici</a>.

## 3. Modèle Logique de Données (MLD)
Après la validation du MCD. J'ai generé le MLD avec l'outil Loooping qui précise les types de données, les contraintes d'intégrité, et les clés primaires et étrangères.
Ce document peut être consulté en cliquant <a href="/assets/imgs/pire-2-pire-mld.jpg">ici</a>.

## 4. Génération du Script SQL pour PostgreSQL
Enfin, j'ai utilisé Looping pour générer automatiquement le script SQL correspondant au MLD pour PostgreSQL. Ce script contient toutes les instructions nécessaires pour créer les tables, les relations, et les contraintes dans la base de données PostgreSQL.
Ce document peut être consulté en cliquant <a href="/Merise/script_sql.sql">ici</a>.

## 5. Création du Dictionnaire de Données
Après avoir généré le script SQL, j'ai créé le dictionnaire de données. Ce document détaille chaque table de la base de données, ainsi que leurs colonnes, types de données, et contraintes.
Ce document peut être consulté en cliquant <a href="/Merise/data_dictionary.md">ici</a>.