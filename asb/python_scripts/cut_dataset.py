#!/usr/bin/python3

import csv
import sys

wejsciowy_plik = "nyt-metadata.csv"
wyjsciowy_plik = "nyt-metadata_cut.csv"
maks_liczba_wierszy = 100000

# Zwiększenie limitu długości pola CSV
csv.field_size_limit(sys.maxsize)

with open(wejsciowy_plik, newline='', encoding='utf-8') as infile, \
     open(wyjsciowy_plik, mode='w', newline='', encoding='utf-8') as outfile:
    
    reader = csv.reader(infile)
    writer = csv.writer(outfile)

    # Zapisz nagłówek
    naglowek = next(reader)
    writer.writerow(naglowek)

    # Zapisz maksymalnie 750000 wierszy
    for i, row in enumerate(reader):
        if i >= maks_liczba_wierszy:
            break
        writer.writerow(row)

print(f"Zapisano pierwsze {maks_liczba_wierszy} wierszy (plus nagłówek) do pliku: {wyjsciowy_plik}")

