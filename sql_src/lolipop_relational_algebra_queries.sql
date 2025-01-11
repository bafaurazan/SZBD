 /*
    This script contains SQL queries that demonstrate the use of relational algebra concepts applied to a database schema.

    The queries include examples of selection, projection, joins, aggregation.

    Designed for use with Oracle SQL-compliant database systems.
*/

-- 1. List of all clients
SELECT id_klienci,
       imie_klienta,
       nazwisko_klienta
FROM   klienci;

-- 2. All events in a specific location (with ID 3)
SELECT w.id_wydarzenie,
       w.nazwa_wydarzenia,
       w.typ_wydarzenia,
       w.data_wydarzenia
FROM   wydarzenie w
       JOIN lokalizacja l
         ON w.id_wydarzenie = l.wydarzenie_id_wydarzenie
WHERE  l.id_lokalizacja = 3;

-- 3. Available materials and their quantity
SELECT id_materialu,
       nazwa_materialu,
       dostepna_ilosc_materialow
FROM   materialy
WHERE  dostepna_ilosc_materialow > 0;

-- 4. Orders from a specific date (14.01.2025)
SELECT id_czas_zamowienia,
       data_zakupu_zamowienia,
       zamowienia_id_fk
FROM   czas_zamowienia
WHERE  data_zakupu_zamowienia = To_date('14/01/2025', 'DD/MM/YYYY');

-- 5. Animators assigned to an order (with ID 4)
SELECT p.id_pracownicy,
       p.imie_pracownika,
       p.nazwisko_pracownika
FROM   pracownik_na_zlecenie pnz
       JOIN pracownicy p
         ON pnz.pracownicy_id_fk = p.id_pracownicy
WHERE  pnz.zlecenia_id_fk = 4;

-- 6. Average cost of completed orders with employee assignments
SELECT Avg(i.cena_koncowa) AS sredni_koszt
FROM   informacja_zwrotna i
       JOIN pracownik_na_zlecenie pnz
         ON i.wydarzenie_id_fk = pnz.zlecenia_id_fk
WHERE  i.cena_koncowa IS NOT NULL;

-- 7. Materials requiring replenishment with their group
SELECT m.id_materialu,
       m.nazwa_materialu,
       m.dostepna_ilosc_materialow,
       m.wymagana_ilosc_materialow,
       g.nazwa_grupy_materialow
FROM   materialy m
       JOIN grupy_materialow g
         ON m.grupy_materialow_id_fk = g.id_grupy_materialow
WHERE  m.dostepna_ilosc_materialow < m.wymagana_ilosc_materialow;

-- The result of this query has no records because all materials entered into the database meet the required quantity criteria
-- Query proving this, displaying material data, their available and required quantities, and the group to which they belong
SELECT m.nazwa_materialu           AS Material,
       m.dostepna_ilosc_materialow AS Dostepna_Ilosc,
       m.wymagana_ilosc_materialow AS Wymagana_Ilosc,
       gm.nazwa_grupy_materialow   AS Grupa_Materialow
FROM   materialy m
       JOIN grupy_materialow gm
         ON m.grupy_materialow_id_fk = gm.id_grupy_materialow;

-- 8. Activities suitable for children aged 5–10
SELECT z.id_zabawy,
       z.nazwa_zabawy
FROM   zabawy z
       JOIN grupy_wiekowe gw
         ON z.id_zabawy = gw.zabawy_id_fk
WHERE  gw.minimalny_wiek_grupy_wiekowej <= 10
       AND gw.maksymalny_wiek_grupy_wiekowej >= 5;

-- 9. Reviews for an event (with ID 1)
SELECT o.id_opinia_klienta,
       o.skala_opinii_klienta,
       o.tresc_opinii_klienta,
       w.id_wydarzenie,
       w.nazwa_wydarzenia,
       w.data_wydarzenia
FROM   opinia_klienta o
       JOIN informacja_zwrotna i
         ON o.informacja_zwrotna_id_fk = i.id_informacja_zwrotna
       JOIN wydarzenie w
         ON i.wydarzenie_id_fk = w.id_wydarzenie
WHERE  i.wydarzenie_id_fk = 1;

-- 10. Locations with events
SELECT l.id_lokalizacja,
       l.uwagi_do_lokalizacji,
       w.id_wydarzenie,
       w.nazwa_wydarzenia,
       w.data_wydarzenia
FROM   lokalizacja l
       JOIN wydarzenie w
         ON l.wydarzenie_id_wydarzenie = w.id_wydarzenie;  