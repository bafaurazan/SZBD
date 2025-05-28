#!/usr/bin/python3

import pandas as pd

# Wczytaj oryginalny plik CSV
df = pd.read_csv("nyt-metadata_cut.csv")

# Lista kolumn typu CLOB do usunięcia
clob_columns = [
    "abstract",
    "snippet",
    "lead_paragraph",
    "multimedia",
    "headline",
    "keywords",
    "byline"
]

# Usuń kolumny typu CLOB
df_filtered = df.drop(columns=clob_columns)

# Zapisz przefiltrowany DataFrame do nowego pliku CSV
df_filtered.to_csv("nyt_filtered.csv", index=False)

print("Plik zapisany jako nyt_filtered.csv")

