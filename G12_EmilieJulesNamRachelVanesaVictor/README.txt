
Marche à suivre installation streamlit et sgbd :


Installez python 3 sur votre appareil : 
tappez python dans le terminal ou https://www.python.org/downloads/ 

Créez un environement virtuel python :

	Ouvrez le terminal powershell en mode administrateur et naviguez dans le dossier du	 projet : cd mon projet , exemple : cd C:\Users\jules\Desktop\testdb


	Dans le terminal tappez la commande suivante pour s'assurer d'avoir l'autorisation	de créer un environement virtuel : Set-ExecutionPolicy Unrestricted -Force


	Tappez dans le terminal : python -m venv .venv

	Un dossier venv apparaitra dans le dossier de votre projet 


	Pour activer l'environement virtuel tappez : .venv\Scripts\Activate.ps1



Ceci fait, installez les librairies python utilisées avec la commande : pip install streamlit mysql-connector-python pandas folium streamlit-folium plotly




Pour alimenter et créer la base de données ouvrez le fichier europa.sql avec le logiciel dbeaver, ou créez la manuellement et copier le requetes sql. 



Ensuite, ouvrez les fichiers Attractions.py et tous les fichiers py présents dans le dossier pages et remplacez y la fonction connexion_db par les informations relatives a votre base de donnee 

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



Vous trouverez ces informations dans l'option "éditer connexion" de DBEAVER 




La base de données étant alimentée et l'environement virtuel configuré, retounez sur le terminal powershell en vérifiant bien être toujours dans l'environement virtuel alloué a ce projet et lancez la commande : streamlit run Attractions.py











