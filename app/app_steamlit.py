import streamlit as st
import pandas as pd
from sqlalchemy import create_engine, inspect
import seaborn as sns
import matplotlib.pyplot as plt

# Configuration Streamlit
st.set_page_config(page_title="MySQL Dashboard Palworld", layout="wide")

# Connexion MySQL
@st.cache_resource
def get_engine():
    user = "root"
    password = "root"
    host = "localhost"
    database = "palworld_database"
    return create_engine(f"mysql+mysqlconnector://{user}:{password}@{host}/{database}")

engine = get_engine()
inspector = inspect(engine)

st.title("📊 Palworld MySQL Analytics Dashboard")

# Liste des tables
tables = inspector.get_table_names()
if not tables:
    st.error("Aucune table trouvée dans la base.")
    st.stop()

# Choix de la table
table = st.sidebar.selectbox("📁 Choisir une table :", tables)

# Charger les données
df = pd.read_sql(f"SELECT * FROM {table}", con=engine)

st.header(f"📄 Table : `{table}`")

# Filtre par recherche texte
search_text = st.text_input("🔍 Filtrer les données (valeurs contenant...)")
if search_text:
    df = df[df.astype(str).apply(lambda row: row.str.contains(search_text, case=False)).any(axis=1)]

# Aperçu des données
st.subheader("👁️‍🗨️ Aperçu des données")
st.dataframe(df.head(100), use_container_width=True)

# Statistiques descriptives
if not df.empty:
    st.subheader("📈 Statistiques descriptives")
    st.dataframe(df.describe(include="all").transpose(), use_container_width=True)

    # Sélection de colonnes numériques pour graphiques
    numeric_cols = df.select_dtypes(include=["int64", "float64"]).columns.tolist()
    if numeric_cols:
        col_to_plot = st.selectbox("📊 Choisir une colonne numérique à visualiser :", numeric_cols)

        # Histogramme
        fig, ax = plt.subplots()
        sns.histplot(df[col_to_plot].dropna(), kde=True, ax=ax)
        ax.set_title(f"Distribution de `{col_to_plot}`")
        st.pyplot(fig)

# Export CSV
st.sidebar.markdown("---")
csv = df.to_csv(index=False).encode("utf-8")
st.sidebar.download_button(
    label="📥 Télécharger CSV filtré",
    data=csv,
    file_name=f"{table}_filtered.csv",
    mime="text/csv"
)
