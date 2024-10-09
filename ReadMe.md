# Création et Alimentation d'un Entrepôt de Données

## Description du Projet
Ce projet consiste à créer et alimenter un entrepôt de données en utilisant des techniques de modélisation en étoile et d'extraction, transformation, chargement (ETL) avec Talend. L'objectif est de permettre une analyse efficace des ventes en utilisant différents axes, notamment la date, le lieu, le client, et la prestation.

## Structure des Données
Le projet se base sur une modélisation en étoile comprenant des dimensions et une table de faits pour l'analyse des ventes. Voici les principales tables créées :

- **DIMDate** : Décompose la date en année, trimestre, mois, jour, etc., pour faciliter l'analyse temporelle.
- **DIMLieu** : Contient des informations géographiques, comme le code postal, le nom des départements et des régions.
- **DIMPrestation** : Catégorise les prestations offertes, incluant le type et la catégorie de la prestation.
- **DIMClient** : Regroupe des informations personnelles et géographiques des clients.
- **Table de Faits Ventes** : Enregistre les mesures des ventes et les références aux dimensions associées.

## Schéma Relationnel
Un schéma relationnel a été défini afin de garantir la résilience des données aux changements, tels que les modifications des adresses des clients, et pour assurer la traçabilité des informations.

## Scripts SQL
Les scripts SQL pour la création des tables ont été rédigés et exécutés pour préparer le datawarehouse à recevoir les données. Ces scripts se trouvent dans le fichier `Table.sql`.

## Jobs Talend
Plusieurs jobs Talend ont été créés pour l'alimentation des différentes dimensions et de la table de faits :

1. **Job Date** : Alimente la dimension des dates à partir d'un fichier `date.csv`.
2. **Job Lieu** : Alimente la dimension des lieux à partir d'un fichier `geography.csv`.
3. **Job Prestation** : Transforme et alimente les données des prestations à partir d'un fichier `prestation.csv`.
4. **Job Client** : Utilise deux bases de données pour extraire, transformer et charger les données clients.
5. **Job Ventes** : Effectue des jointures complexes sur les données des ventes et alimente la table de faits.

## Analyses OLAP
Pour optimiser les opérations OLAP, l'entrepôt de données a été transformé en un fichier XML pour permettre des analyses multidimensionnelles. Les requêtes OLAP sont regroupées dans le dossier `exemples`.

## Prérequis
- **Talend** : Pour créer et exécuter les jobs ETL.
- **SQLite** : Pour la création et la gestion de la base de données.
- **Fichiers CSV** : Contenant les données brutes à transformer et charger.

## Installation et Exécution
1. Exécuter les scripts SQL disponibles dans `Table.sql` pour créer les tables dans SQLite.
2. Utiliser Talend pour exécuter les jobs d'alimentation des dimensions et de la table de faits.
3. Pour les analyses OLAP, référez-vous aux requêtes présentes dans le dossier `exemples`.

## Licence
Ce projet est distribué sous la licence MIT. Voir le fichier `LICENSE` pour plus d'informations.

