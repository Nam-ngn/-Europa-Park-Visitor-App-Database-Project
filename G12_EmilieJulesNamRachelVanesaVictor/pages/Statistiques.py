import streamlit as st
import mysql.connector #librairie utilisée pour la connection a la bdd 
import pandas as pd # Librairie utilisée pour l'analyses et l'affichage de données 
import plotly.express as px #librairie utilisée pour la création de graphiques 

# Connexion à la base de données
def connexion_db():
    connection = mysql.connector.connect(
        host="localhost",
        port=3306,
        user="root",
        password="Jhenr2204",
        database="europa-park",
        autocommit=True,
    )
    return connection


def donnees_visites():
    connection = connexion_db()
    cursor = connection.cursor()

    
    query = """
    SELECT DateDebutValidite, COUNT(*) as Visits
    FROM Billet
    GROUP BY DateDebutValidite
    ORDER BY Visits DESC
    """
    cursor.execute(query)
    result = cursor.fetchall()

    
    cursor.close()
    connection.close()

    
    df = pd.DataFrame(result, columns=['Date', 'Visites'])
    return df


def donnees_clients():
    connection = connexion_db()
    cursor = connection.cursor()

    # Query to fetch the data
    query = """
    SELECT IndicationGrossesse
    FROM Client
    """
    cursor.execute(query)
    result = cursor.fetchall()

    # Close the cursor and connection
    cursor.close()
    connection.close()

    # Convert result to DataFrame
    df = pd.DataFrame(result, columns=['IndicationGrossesse'])
    return df


def donnes_cat():
    connection = connexion_db()
    cursor = connection.cursor()

    
    query = """
    SELECT IdCategorie, COUNT(*) as Count
    FROM Billet
    GROUP BY IdCategorie
    """
    cursor.execute(query)
    result = cursor.fetchall()

    
    cursor.close()
    connection.close()

    
    df = pd.DataFrame(result, columns=['IdCategorie', 'Count'])
    return df


category_mapping = {
    1: 'Enfants de moins de 3 ans, 1 jour',
    2: 'Enfants 4 à 11 ans, 1 jour',
    3: 'Adultes 12 à 59 ans, 1 jour',
    4: 'Seniors à partir de 60 ans, 1 jour',
    5: 'Enfants de moins de 3 ans, 2 jours',
    6: 'Enfants 4 à 11 ans, 2 jours',
    7: 'Adultes 12 à 59 ans, 2 jours',
    8: 'Seniors à partir de 60 ans, 2 jours',
}


donnees_visite = donnees_visites()
donnes_clients = donnees_clients()
donnes_categorie = donnes_cat()


donnes_categorie['NomCategorie'] = donnes_categorie['IdCategorie'].map(category_mapping)


pregnant_count = donnes_clients[donnes_clients['IndicationGrossesse'] == 'Oui'].shape[0]
non_pregnant_count = donnes_clients[donnes_clients['IndicationGrossesse'] == 'Non'].shape[0]


pie_data = pd.DataFrame({
    'Status': ['Enceinte', 'Non-enceinte'],
    'Count': [pregnant_count, non_pregnant_count]
})


fig = px.bar(donnees_visite, x='Date', y='Visites', title='Jours les plus visités')


fig_pie = px.pie(pie_data, values='Count', names='Status', title='Pourcentage de femmes enceintes')


fig_ticket_category = px.pie(donnes_categorie, values='Count', names='NomCategorie', title='Répartition des catégories de billets')


st.title('Statistiques du parc')
st.plotly_chart(fig)
st.plotly_chart(fig_pie)
st.plotly_chart(fig_ticket_category)
