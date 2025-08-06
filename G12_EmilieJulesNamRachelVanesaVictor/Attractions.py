import streamlit as st
import mysql.connector #librairie utilisée pour la connection a la bdd 
from datetime import date # Librairie utilisée pour l'affichage de la date 

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

# Fonction pour récupérer les attractions disponibles
def get_attractions(age, taille, date_visite, enceinte):
    conn = connexion_db()
    cursor = conn.cursor(dictionary=True)
    
    if enceinte == 'Oui':
            query = """
            SELECT * FROM Attraction 
            WHERE 
                (AgeMinSeul <= %s OR AgeMinAccompagne <= %s) 
                AND (TailleMinSeul <= %s OR TailleMinAccompagne <= %s) 
                AND (AgeLimite IS NULL OR AgeLimite >= %s)
                AND DateOuverture <= %s
                AND DateFermeture >= %s
                AND IndicationGrossesse = %s
            """
            parametres = (age, age, taille, taille, age, date_visite, date_visite, 'OUI')
    else:
            query = """
            SELECT * FROM Attraction 
            WHERE 
                (AgeMinSeul <= %s OR AgeMinAccompagne <= %s) 
                AND (TailleMinSeul <= %s OR TailleMinAccompagne <= %s) 
                AND (AgeLimite IS NULL OR AgeLimite >= %s)
                AND DateOuverture <= %s
                AND DateFermeture >= %s
            """
            parametres = (age, age, taille, taille, age, date_visite, date_visite)
            
    cursor.execute(query, parametres)
    attractions = cursor.fetchall()
    
    cursor.close()
    conn.close()
    
    return attractions


st.title("Attractions")

# Sliders pour l'âge et la taille
age = st.slider("Âge", 0, 100, 25)
taille = st.slider("Taille (cm)", 50, 250, 170)

# Sélecteur de date pour la date de séjour
date_visite = st.date_input("Date de séjour", date.today())

# Indicateur de grossesse
enceinte = st.radio("Êtes-vous enceinte ?", ('Oui', 'Non'))

# Affichage des résultats
if st.button("Afficher les attractions disponibles"):
    attractions = get_attractions(age, taille, date_visite, enceinte)
    
    if attractions:
        for attraction in attractions:
            st.subheader(attraction["NomAttraction"])
            if attraction['AgeMinSeul'] is not None:
                st.write(f"Âge minimum seul: {attraction['AgeMinSeul']}")
            if attraction['AgeMinAccompagne'] is not None:
                st.write(f"Âge minimum accompagné: {attraction['AgeMinAccompagne']}")
            if attraction['TailleMinSeul'] is not None:
                st.write(f"Taille minimum seul: {attraction['TailleMinSeul']} cm")
            if attraction['TailleMinAccompagne'] is not None:
                st.write(f"Taille minimum accompagné: {attraction['TailleMinAccompagne']} cm")
            if attraction['DateOuverture'] is not None:
                st.write(f"Date d'ouverture: {attraction['DateOuverture']}")
            if attraction['DateFermeture'] is not None:
                st.write(f"Date de fermeture: {attraction['DateFermeture']}")
            if attraction['IndicationGrossesse'] is not None:
                st.write(f"Indication grossesse: {attraction['IndicationGrossesse']}")
            if attraction['DureeParcours'] is not None:
                st.write(f"Durée du parcours: {attraction['DureeParcours']}")
            if attraction['VitesseMax'] is not None:
                st.write(f"Vitesse maximale: {attraction['VitesseMax']} km/h")
            st.write("----")
    else:
        st.write("Aucune attraction disponible pour les critères spécifiés.")