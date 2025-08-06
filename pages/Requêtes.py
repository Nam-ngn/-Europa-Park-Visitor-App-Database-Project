import streamlit as st
import mysql.connector #librairie utilisée pour la connection a la bdd 
import pandas as pd # Librairie utilisée pour l'analyses et l'affichage de données 

# Connexion à la base de données MySQL
def connexion_db():
    connection = mysql.connector.connect(
        host = "localhost",
        port = 3306,
        user = "root",
        password = "Jhenr2204",
        database  = "europa-park",
        autocommit = True,
    )
    return connection

# Fonction executant les requetes et retourand un dataframe
def execution_requetes(query):
    conn = connexion_db()
    df = pd.read_sql(query, conn)
    conn.close()
    return df

# requetes 
requetes = {
    "Nombre de catégories de billet différentes": """
        SELECT COUNT(IdCategorie) AS NombreDeCategories
        FROM categorie_billet;
    """,
    "Noms des attractions les plus rapides du parc": """
        SELECT NomAttraction, VitesseMax
        FROM attraction
        WHERE VitesseMax IS NOT NULL
        GROUP BY NomAttraction
        ORDER BY VitesseMax DESC;
    """,
    "Liste des clients ayant acheté un billet entre le 3 et le 6 septembre 2024": """
        SELECT DISTINCT PrenomClient, NomClient
        FROM Client
        WHERE NoClient IN (
            SELECT NoClient
            FROM billet
            WHERE DateDebutValidite BETWEEN '2024-09-03' AND '2024-09-06'
        );
    """,
    "Prix du billet acheté par Marie Bernard": """
        SELECT PrixBillet
        FROM categorie_billet, billet, client
        WHERE PrenomClient = 'Marie' AND NomClient = 'Bernard'
          AND categorie_billet.IdCategorie = billet.IdCategorie
          AND billet.NoClient = client.NoClient;
    """,
    "Chiffres d’affaires des restaurants": """
        SELECT ar.NomRestaurant, SUM(ar.PrixResto) AS ChiffreAffaire
        FROM Addition_Restaurant ar
        GROUP BY ar.NomRestaurant;
    """,
    "Spectacles où il n’y a pas eu de spectateurs": """
        SELECT s.NoSpectacle, s.NomSpectacle, s.DateDebutspectacle, s.DateFinspectacle
        FROM Spectacle s
        LEFT JOIN Reservation_Spectacle rs ON s.NoSpectacle = rs.NoSpectacle
        WHERE rs.NoClient IS NULL;
    """,
    "Spectacles où il y a eu le plus de spectateurs": """
        SELECT rs.NoSpectacle, s.NomSpectacle, COUNT(rs.NoClient) AS NombreDeClients
        FROM Reservation_Spectacle rs
        JOIN Spectacle s ON rs.NoSpectacle = s.NoSpectacle
        GROUP BY rs.NoSpectacle, s.NomSpectacle
        ORDER BY NombreDeClients DESC;
    """,
    "Clients venus plus d'une fois": """
        SELECT c.NoClient, c.NomClient, c.PrenomClient, COUNT(b.NoBillet) AS NombreDeVisites
        FROM Client c
        JOIN Billet b ON c.NoClient = b.NoClient
        GROUP BY c.NoClient, c.NomClient, c.PrenomClient
        HAVING COUNT(b.NoBillet) > 1;
    """,
    "Classer le nombre d’additions et le montant par cuisine de restaurant": """
        SELECT r.Cuisine, COUNT(ar.PrixResto) AS NombreAdditions, SUM(ar.PrixResto) AS MontantTotal
        FROM Restauration r
        JOIN Addition_Restaurant ar ON r.NomRestaurant = ar.NomRestaurant
        GROUP BY r.Cuisine
        ORDER BY MontantTotal DESC;
    """,
    "Jours ayant eu le plus de clients": """
        SELECT b.DateDebutValidite, COUNT(b.NoClient) AS NombreDeClients
        FROM Billet b
        GROUP BY b.DateDebutValidite
        ORDER BY NombreDeClients DESC;
    """,
    "Lister les attractions de Suisse": """
        SELECT a.NomAttraction, a.VitesseMax, a.AgeMinSeul, a.TailleMinSeul, a.DateOuverture, a.DateFermeture
	FROM Attraction a
	JOIN pays p  ON a.IdPays  = p.IdPays
	WHERE p.pays = 'Suisse';
    """
}

#Titre de la page 
st.title("Requêtes d'interrogation")

query_name = st.selectbox("Selectionnez une requete", list(requetes.keys()))

if query_name:

    query = requetes[query_name]
    df = execution_requetes(query)
    st.dataframe(df)
