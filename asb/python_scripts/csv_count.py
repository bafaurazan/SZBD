#!/usr/bin/python3

import csv
import os
import sys

# Zwiększenie limitu długości pola CSV
csv.field_size_limit(sys.maxsize)

plik_csv_list = [
    "nyt-metadata_cut.csv",
]

laczna_ilosc_wierszy = 0

for plik in plik_csv_list:
    if not os.path.isfile(plik):
        print(f"Plik nie istnieje: {plik}")
        continue

    with open(plik, newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile)
        liczba_wierszy = sum(1 for _ in reader)
        print(f"{plik}: {liczba_wierszy} wierszy")
        laczna_ilosc_wierszy += liczba_wierszy

print(f"Łączna liczba wierszy we wszystkich plikach: {laczna_ilosc_wierszy}")

