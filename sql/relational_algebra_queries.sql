-- 1. Lista wszystkich klientów
SELECT id_klienci, imie_klienta, nazwisko_klienta
FROM klienci;


-- 2. Wszystkie wydarzenia w konkretnej lokalizacji (o ID 3)
SELECT w.id_wydarzenie, w.nazwa_wydarzenia, w.typ_wydarzenia, w.data_wydarzenia
FROM wydarzenie w
JOIN lokalizacja l ON w.id_wydarzenie = l.wydarzenie_id_wydarzenie
WHERE l.id_lokalizacja = 3;


-- 3. Dostępne materiały i ich ilość
SELECT id_materialu, nazwa_materialu, dostepna_ilosc_materialow
FROM materialy
WHERE dostepna_ilosc_materialow > 0;


-- 4. Zamówienia z określonego dnia (14.01.2025)
SELECT id_czas_zamowienia, data_zakupu_zamowienia, zamowienia_id_fk
FROM czas_zamowienia
WHERE data_zakupu_zamowienia = TO_DATE('14/01/2025', 'DD/MM/YYYY');


-- 5. Animatorzy przypisani do zlecenia (o ID 4)
SELECT p.id_pracownicy, p.imie_pracownika, p.nazwisko_pracownika
FROM pracownik_na_zlecenie pnz
JOIN pracownicy p ON pnz.pracownicy_id_fk = p.id_pracownicy
WHERE pnz.zlecenia_id_fk = 4;


-- 6. Średni koszt zakończonych zleceń z przypisaniem pracowników
SELECT AVG(i.cena_koncowa) AS sredni_koszt
FROM informacja_zwrotna i
JOIN pracownik_na_zlecenie pnz ON i.wydarzenie_id_fk = pnz.zlecenia_id_fk
WHERE i.cena_koncowa IS NOT NULL;


-- 7. Materiały wymagające uzupełnienia z grupą materiałów
SELECT m.id_materialu, m.nazwa_materialu, m.dostepna_ilosc_materialow,
       m.wymagana_ilosc_materialow, g.nazwa_grupy_materialow
FROM materialy m
JOIN grupy_materialow g ON m.grupy_materialow_id_fk = g.id_grupy_materialow
WHERE m.dostepna_ilosc_materialow < m.wymagana_ilosc_materialow;


-- 8. Zabawy odpowiednie dla dzieci w wieku 5–10 lat
SELECT z.id_zabawy, z.nazwa_zabawy
FROM zabawy z
JOIN grupy_wiekowe gw ON z.id_zabawy = gw.zabawy_id_fk
WHERE gw.minimalny_wiek_grupy_wiekowej <= 10
  AND gw.maksymalny_wiek_grupy_wiekowej >= 5;


-- 9. Opinie dla wydarzenia (o ID 1)
SELECT
    o.id_opinia_klienta,
    o.skala_opinii_klienta,
    o.tresc_opinii_klienta,
    w.id_wydarzenie,
    w.nazwa_wydarzenia,
    w.data_wydarzenia
FROM opinia_klienta o
JOIN informacja_zwrotna i ON o.informacja_zwrotna_id_fk = i.id_informacja_zwrotna
JOIN wydarzenie w ON i.wydarzenie_id_fk = w.id_wydarzenie
WHERE i.wydarzenie_id_fk = 1;



-- 10. Lokalizacje z wydarzeniami
SELECT l.id_lokalizacja, l.uwagi_do_lokalizacji, w.id_wydarzenie, w.nazwa_wydarzenia, w.data_wydarzenia
FROM lokalizacja l
JOIN wydarzenie w ON l.wydarzenie_id_wydarzenie = w.id_wydarzenie;
