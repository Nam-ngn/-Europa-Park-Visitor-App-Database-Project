import streamlit as st
import mysql.connector #librairie utilisée pour la connection a la bdd 
import pandas as pd # Librairie utilisée pour l'analyses et l'affichage de données
import os # Librairie utilisée pour la création d'un chemin d'accès aux icones de la carte
import folium # Librairie utilisée pour la création de la carte
from streamlit_folium import folium_static # Librairie utilisée pour la création de la carte

current_dir = os.path.dirname(__file__)


# Connexion a la base de donnée 
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

# donnes des attractions 
def donnees_attractions():
    connection = connexion_db()
    query = "SELECT * FROM Attraction"
    attractions = pd.read_sql(query, connection)
    connection.close()
    return attractions


# donnes des restaurants 
def donnees_restaurants():
    connection = connexion_db()
    query = "SELECT * FROM Restauration"
    restaurants = pd.read_sql(query, connection)
    connection.close()
    return restaurants

# donnes des spectacles 
def donnees_spectacles():
    connection = connexion_db()
    query = "SELECT * FROM Spectacle"
    spectacles = pd.read_sql(query, connection)
    connection.close()
    return spectacles


# Convertion des coordonées en tuples 
def coordonees_conv(coord_str):
    if coord_str and ',' in coord_str:
        lat, lon = map(float, coord_str.split(','))
        return lat, lon
    return None, None


def main():
    st.title("Plan interactif ")

    
    attractions = donnees_attractions()
    restaurants = donnees_restaurants()
    spectacles = donnees_spectacles()

    #Chemins d'acces pour les logos personalisés
    attraction_icone = os.path.join(current_dir, '..', 'icones_map', 'marker-icon-attraction.png')
    restaurants_icone = os.path.join(current_dir, '..', 'icones_map', 'marker-icon-gastro.png')
    spectacles_icones = os.path.join(current_dir, '..', 'icones_map', 'marker-icon-show.png')


    # Creation d'une carte centrée sur les coordonées d'europapark
    m = folium.Map(location=[48.268, 7.721], zoom_start=15)

    

    # Ajout des attractions a la carte avec leur icone associé 
    for _, row in attractions.iterrows():
        icon2 = folium.features.CustomIcon(attraction_icone, icon_size=(30,30))
        lat, lon = coordonees_conv(row['Coordonnees'])
        if lat is not None and lon is not None:
            folium.Marker(
                location=[lat, lon],
                icon = icon2,
                popup=f"{row['NomAttraction']}",
            ).add_to(m)

    # Ajout des restaurants a la carte avec leur icone associé 
    for _, row in restaurants.iterrows():
        icon3 = folium.features.CustomIcon(restaurants_icone, icon_size=(30,30))
        lat, lon = coordonees_conv(row['Coordonnees'])
        if lat is not None and lon is not None:
            folium.Marker(
                location=[lat, lon],
                icon=icon3,
                popup=f"{row['NomRestaurant']} - {row['Cuisine']}",
            ).add_to(m)

    # Ajout des spectacles a la carte avec leur icone associé 
    for _, row in spectacles.iterrows():
        icon4 = folium.features.CustomIcon(spectacles_icones, icon_size=(30,30))
        lat, lon = coordonees_conv(row['Coordonnees'])
        if lat is not None and lon is not None:
            folium.Marker(
                location=[lat, lon],
                icon=icon4,
                popup=f"{row['NomSpectacle']}",
            ).add_to(m)

    # affichage de la carte 
    folium_static(m)

if __name__ == "__main__":
    main()