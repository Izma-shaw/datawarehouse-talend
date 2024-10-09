
-- TABLE Date
DROP TABLE IF EXISTS DIMDate;


CREATE TABLE DIMDate (
id_date INTEGER PRIMARY KEY autoincrement, 
datetimeSQL TEXT NOT NULL,
annee INTEGER NOT NULL,
trimestre INTEGER NOT NULL,
mois INTEGER NOT NULL,
nom_du_mois TEXT NOT NULL,
jour_du_mois INTEGER NOT NULL,
jour_semaine TEXT NOT NULL,
heure INTEGER NOT NULL,
munite INTEGER NOT NULL
);


--Table Lieu
DROP TABLE IF EXISTS DIMLieu;

CREATE TABLE DIMLieu (
id_lieu INTEGER PRIMARY KEY autoincrement, 
insee TEXT,
zip TEXT,
name TEXT NOT NULL,
slug TEXT NOT NULL,
departments_id INTEGER,
departments_code TEXT,
departments_name TEXT,
departments_slug TEXT,
regions_id INTEGER,
code TEXT,
regions_name TEXT,
regions_slug TEXT
);


--Table Prestation
DROP TABLE IF EXISTS DIMPrestation;

CREATE TABLE DIMPrestation (
id_prestation INTEGER PRIMARY KEY autoincrement, 
code_prestation TEXT,
nom TEXT,
categorie TEXT
);


--Table Client
DROP TABLE IF EXISTS DIMClient;

CREATE TABLE DIMClient (
id_client1 INTEGER PRIMARY KEY autoincrement,
id_client INTEGER,
num_client INTEGER,
nom TEXT,
prenom TEXT,
adresse TEXT,
code_postal TEXT,
ville TEXT,
slug TEXT,
departments_id INTEGER,
departments_code TEXT,
departments_name TEXT,
departments_slug TEXT,
regions_id INTEGER,
code TEXT,
regions_name TEXT,
regions_slug TEXT
);

--TABLE DE FAIT
DROP TABLE IF EXISTS DIMVentes;

CREATE TABLE DIMVentes (
id_vente INTEGER PRIMARY KEY autoincrement,
prix REAL NOT NULL,
adresse_prestation TEXT NOT NULL,
date_insertion TEXT NOT NULL,
id_client INTEGER NOT NULL REFERENCES DIMClient(id_client1),
id_lieu INTEGER NOT NULL REFERENCES DIMLieu(id_lieu),
id_prestation INTEGER NOT NULL REFERENCES DIMPrestation(id_prestation),
heure_debut INTEGER NOT NULL REFERENCES DIMDate(id_date),
heure_fin INTEGER NOT NULL REFERENCES DIMDate(id_date),
duree_intervention INTEGER NOT NULL
);
