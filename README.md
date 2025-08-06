# 🎢 Europa Park – Application pour les visiteurs - Projet Base de Données

Ce dépôt contient une **application web développée avec la librairie Streamlit** de Python ainsi qu’une **base de données relationnelle MySQL** permettant de gérer l’accès des visiteurs aux attractions d’Europa Park.

Réalisé dans le cadre du cours *"Bases de Données"* à l’**Université de Genève (Printemps 2024)** par le **Groupe 12**.

---

##  Membres du Groupe 12

- Emilie Berthouzoz  
- Jules Gaspard Henry  
- Nam Thang Nguyen  
- Rachel Julie Chambaz  
- Vanesa Ordolli  
- Victor Jay Charles Vincent  

---

## Fonctionnalités de l'application (`Attractions.py`)

- Connexion à une **base de données MySQL** (`europa-park`)
- Saisie d'informations utilisateur : **âge, taille, date de visite, grossesse**
- Affiche toutes les attractions accessibles au visiteur
- Filtres appliqués :
  - Seuils d’âge et de taille (seul / accompagné)
  - Dates d’ouverture et fermeture de l’attraction
  - Restrictions liées à la grossesse

---

## Technologies utilisées :
- `streamlit`
- `mysql-connector-python`
- `datetime`

---

## Modèle de Base de Données

La base de données gère :
- La billetterie
- Les attractions
- La restauration et les additions
- Les réservations de spectacles
- La localisation des éléments par pays

**Schéma relationnel** : normalisé en **3ème forme normale (3FN)**  

---

## Captures d’écran 

Voici quelques captures de l’application Streamlit une fois déployée localement ou en ligne.

<p align="left">
  <img src="pong.png" alt="Pong Game" width="400"/>
  <img src="endgame.png" alt="End Game" width="400"/>
</p>

---

## Lancer l'application (Marche à suivre installation streamlit et sgbd :)

1. Installez python 3 sur votre appareil : 
tappez python dans le terminal ou https://www.python.org/downloads/ 

2. Créez un environement virtuel python :

	2.1 Ouvrez le terminal powershell en mode administrateur et naviguez dans le dossier du projet : cd mon projet , exemple : cd C:\Users\jules\Desktop\testdb


	2.2 Dans le terminal tappez la commande suivante pour s'assurer d'avoir l'autorisation de créer un environement virtuel : Set-ExecutionPolicy Unrestricted -Force


	2.3 Tappez dans le terminal : python -m venv .venv

	2.4 Un dossier venv apparaitra dans le dossier de votre projet 


	2.5 Pour activer l'environement virtuel tappez : .venv\Scripts\Activate.ps1



3. Ceci fait, installez les librairies python utilisées avec la commande : pip install streamlit mysql-connector-python pandas folium streamlit-folium plotly




4. Pour alimenter et créer la base de données ouvrez le fichier europa.sql avec le logiciel dbeaver, ou créez la manuellement et copier le requetes sql. 



5. Ensuite, ouvrez les fichiers Attractions.py et tous les fichiers py présents dans le dossier pages et remplacez y la fonction connexion_db par les informations relatives a votre base de donnée. Vous trouverez ces informations dans l'option "éditer connexion" de DBEAVER. Vous pouvez utiliser une autre interface graphique (GUI) permettant de gérer visuellement une base de données (PHP MyAdmin, MySQL Workbench, etc.)

 ```bash

	def connexion_db():
    connection = mysql.connector.connect(
        host = "localhost",
        port = 3306,
        user = "root",
        password = "123",
        database  = "europa-park",
        autocommit = True,
    )
    return connection

 ```


6. La base de données étant alimentée et l'environement virtuel configuré, retounez sur le terminal powershell en vérifiant bien être toujours dans l'environement virtuel alloué a ce projet et lancez la commande : streamlit run Attractions.py











