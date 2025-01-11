/*
    This script contains SQL commands to populate tables with sample data for Lolipop Database system. 

    The script is divided into sections based on the data being inserted:
    1. Main tables - Populates primary entities
    2. Tables with foreign keys - Populates relationships between entities

    Each section uses the `INSERT ALL` syntax to batch insert data into tables, ensuring database consistency and easy replication of the environment.

    Designed for use with Oracle SQL-compliant database systems.
*/

-- MAIN TABLES

-- Data for the klienci table
INSERT ALL
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (1, 'Anna', 'Kowalska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (2, 'Jan', 'Nowak')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (3, 'Maria', 'Wiśniewska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (4, 'Piotr', 'Zieliński')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (5, 'Katarzyna', 'Kamińska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (6, 'Tomasz', 'Lewandowski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (7, 'Agnieszka', 'Szymańska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (8, 'Michał', 'Dąbrowski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (9, 'Barbara', 'Kaczmarek')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta)
        VALUES (10, 'Rafał', 'Pawlak')
SELECT * FROM dual;


-- Data for the pracownicy table
INSERT ALL
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (1, 'Adam', 'Kowalski')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (2, 'Ewa', 'Nowak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (3, 'Marek', 'Wiśniewski')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (4, 'Joanna', 'Zielińska')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (5, 'Robert', 'Kamiński')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (6, 'Magdalena', 'Lewandowska')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (7, 'Krzysztof', 'Szymański')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (8, 'Alicja', 'Dąbrowska')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (9, 'Wojciech', 'Kaczmarek')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika)
        VALUES (10, 'Dorota', 'Pawlak')
SELECT * FROM dual;


-- Data for the adresy table
INSERT ALL
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (1, 'Kwiatowa', 15, 1)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (2, 'Dębowa', 12, 3)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (3, 'Słoneczna', 7, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (4, 'Lipowa', 18, 2)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (5, 'Brzozowa', 21, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (6, 'Topolowa', 5, 4)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (7, 'Wiśniowa', 9, 3)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (8, 'Cicha', 11, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (9, 'Parkowa', 4, 1)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania)
        VALUES (10, 'Leśna', 8, 2)
SELECT * FROM dual;


-- Data for the miejscowosci table
INSERT ALL
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (1, 'Warszawa', '00-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (2, 'Kraków', '30-002')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (3, 'Łódź', '90-003')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (4, 'Wrocław', '50-004')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (5, 'Poznań', '60-005')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (6, 'Gdańsk', '80-006')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (7, 'Szczecin', '70-007')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (8, 'Bydgoszcz', '85-008')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (9, 'Lublin', '20-009')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy)
        VALUES (10, 'Katowice', '40-010')
SELECT * FROM dual;


-- Data for the oferty table
INSERT ALL
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) 
        VALUES (1, 'Pakiet Słoneczny', 450.00, INTERVAL '02:00:00' HOUR TO SECOND, '2 godziny, do 20 dzieci, 1 animator')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) 
        VALUES (2, 'Pakiet Brokatowy', 650.00, INTERVAL '03:00:00' HOUR TO SECOND, '3 godziny, do 10 dzieci, 1 animator')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) 
        VALUES (3, 'Pakiet Brokatowy', 900.00, INTERVAL '03:00:00' HOUR TO SECOND, '3 godziny, do 20 dzieci, 2 animatorzy')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) 
        VALUES (4, 'Pakiet Złoty', 800.00, INTERVAL '04:00:00' HOUR TO SECOND, '4 godziny, do 10 dzieci, 1 animator')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) 
        VALUES (5, 'Pakiet Złoty', 1100.00, INTERVAL '04:00:00' HOUR TO SECOND, '4 godziny, do 20 dzieci, 2 animatorzy')
SELECT * FROM dual;


-- Data for the zamowienia table
INSERT ALL
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (1, 'Anna Kowalska', 'Kurier', 'Jan Kowalski')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (2, 'Piotr Nowak', 'Odbiór osobisty', 'Maria Nowak')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (3, 'Ewa Wiśniewska', 'Paczkomat', 'Marek Wiśniewski')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (4, 'Tomasz Zieliński', 'Kurier', 'Joanna Zielińska')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (5, 'Agnieszka Kamińska', 'Odbiór osobisty', 'Robert Kamiński')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (6, 'Krzysztof Lewandowski', 'Paczkomat', 'Magdalena Lewandowska')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (7, 'Michał Szymański', 'Kurier', 'Alicja Szymańska')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (8, 'Barbara Dąbrowska', 'Odbiór osobisty', 'Wojciech Dąbrowski')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (9, 'Dorota Kaczmarek', 'Paczkomat', 'Jan Kaczmarek')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) 
        VALUES (10, 'Rafał Pawlak', 'Kurier', 'Katarzyna Pawlak')
SELECT * FROM dual;

-- TABLES WITH FOREIGN KEYS

-- Data for the adresy_klientow table
INSERT ALL
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (1, 1, 1)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (2, 2, 2)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (3, 3, 3)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (4, 4, 4)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (5, 5, 5)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (6, 6, 6)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (7, 7, 7)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (8, 8, 8)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (9, 9, 9)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (10, 10, 10)
SELECT * FROM dual;


-- Data for the adresy_pracownikow table
INSERT ALL
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (1, 1, 1)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (2, 2, 2)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (3, 3, 3)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (4, 4, 4)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (5, 5, 5)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (6, 6, 6)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (7, 7, 7)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (8, 8, 8)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (9, 9, 9)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk)
        VALUES (10, 10, 10)
SELECT * FROM dual;


-- Data for the czas_zamowienia table
INSERT ALL
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (1, DATE '2025-01-12', INTERVAL '10:00:00' HOUR TO SECOND, DATE '2025-01-10', INTERVAL '14:00:00' HOUR TO SECOND, 1)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (2, DATE '2025-01-13', INTERVAL '12:30:00' HOUR TO SECOND, DATE '2025-01-11', INTERVAL '09:15:00' HOUR TO SECOND, 2)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (3, DATE '2025-01-14', INTERVAL '16:45:00' HOUR TO SECOND, DATE '2025-01-12', INTERVAL '08:30:00' HOUR TO SECOND, 3)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (4, DATE '2025-01-15', INTERVAL '18:00:00' HOUR TO SECOND, DATE '2025-01-13', INTERVAL '11:00:00' HOUR TO SECOND, 4)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (5, DATE '2025-01-16', INTERVAL '15:30:00' HOUR TO SECOND, DATE '2025-01-14', INTERVAL '10:15:00' HOUR TO SECOND, 5)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (6, DATE '2025-01-17', INTERVAL '14:15:00' HOUR TO SECOND, DATE '2025-01-15', INTERVAL '09:45:00' HOUR TO SECOND, 6)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (7, DATE '2025-01-18', INTERVAL '17:00:00' HOUR TO SECOND, DATE '2025-01-16', INTERVAL '08:30:00' HOUR TO SECOND, 7)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (8, DATE '2025-01-19', INTERVAL '10:45:00' HOUR TO SECOND, DATE '2025-01-17', INTERVAL '12:00:00' HOUR TO SECOND, 8)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (9, DATE '2025-01-20', INTERVAL '13:30:00' HOUR TO SECOND, DATE '2025-01-18', INTERVAL '11:15:00' HOUR TO SECOND, 9)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) 
        VALUES (10, DATE '2025-01-21', INTERVAL '09:30:00' HOUR TO SECOND, DATE '2025-01-19', INTERVAL '16:00:00' HOUR TO SECOND, 10)
SELECT * FROM dual;


-- Data for the grupy_materialow table
INSERT ALL
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (1, 'Balony i Dekoracje', 1)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (2, 'Gry i Zabawki', 2)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (3, 'Muzyka i Dźwięk', 3)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (4, 'Materiały Plastyczne', 4)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (5, 'Akcesoria Tematyczne', 5)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (6, 'Sprzęt Elektroniczny', 6)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (7, 'Kostiumy i Maski', 7)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (8, 'Zestawy Edukacyjne', 8)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (9, 'Książki i Broszury', 9)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk)
        VALUES (10, 'Inne Materiały', 10)
SELECT * FROM dual;


-- Data for the materialy table
INSERT ALL
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (1, 'Balony', 100, 50, 1)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (2, 'Kredki', 200, 100, 4)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (3, 'Maski', 50, 20, 7)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (4, 'Zeszyty', 75, 30, 9)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (5, 'Głośniki', 10, 5, 3)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (6, 'Farby', 120, 60, 4)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (7, 'Kostiumy', 30, 10, 7)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (8, 'Zestawy edukacyjne', 40, 20, 8)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (9, 'Dekoracje', 80, 40, 1)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) 
        VALUES (10, 'Broszury', 50, 25, 9)
SELECT * FROM dual;


-- Data for the uzyte_materialy table
INSERT ALL
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (1, 1)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (1, 9)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (2, 2)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (3, 5)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (4, 6)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (5, 3)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (5, 7)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (4, 4)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (2, 8)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) 
        VALUES (1, 10)
SELECT * FROM dual;


-- Data for the zabawy table
INSERT ALL
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (1, 'Gry ruchowe', 'Zabawy wymagające aktywności fizycznej.', 1, 20, 1)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (2, 'Zabawy ruchowe', 'Proste gry angażujące dzieci w ruch.', 1, 20, 2)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (3, 'Tańce animacyjne', 'Tańce prowadzone przez animatora.', 1, 20, 3)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (4, 'Konkursy', 'Zabawy z nagrodami dla dzieci.', 1, 20, 4)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (5, 'Zawody sportowe', 'Proste zawody jak rzuty do celu.', 1, 20, 5)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (6, 'Modelowanie balonów', 'Tworzenie kształtów z balonów.', 1, 20, 6)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (7, 'Bańki XXL', 'Tworzenie ogromnych baniek mydlanych.', 1, 20, 7)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (8, 'Tatuaże brokatowe', 'Malowanie na skórze wzorów.', 1, 20, 8)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (9, 'Malowanie twarzy', 'Artystyczne malowanie twarzy.', 1, 20, 9)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (10, 'Warsztat plastyczny', 'Kreatywne zajęcia plastyczne.', 1, 20, 10)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (11, 'Zamknięcie w bańce', 'Dzieci w środku wielkiej bańki.', 1, 20, 1)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) 
        VALUES (12, 'Kącik maluszka', 'Basenik z kulkami i klocki.', 1, 10, 2)
SELECT * FROM dual;


-- Data for the grupy_wiekowe table
INSERT ALL
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (1, 1, 3, 2)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (2, 4, 6, 6)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (3, 7, 9, 5)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (4, 10, 12, 4)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (5, 13, 17, 3)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (6, 18, 24, 8)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (7, 25, 40, 7)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (8, 41, 60, 10)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (9, 61, 80, 1)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
        VALUES (10, 1, 99, 9)
SELECT * FROM dual;


-- Data for the gatunek_muzyczny table
INSERT ALL
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (1, 'Pop', 7)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (2, 'Disco Polo', 5)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (3, 'Rock', 6)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (4, 'Muzyka dziecięca', 1)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (5, 'Klasyczna', 8)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (6, 'Hip-Hop', 6)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (7, 'Jazz', 8)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (8, 'Folk', 4)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (9, 'Elektroniczna', 6)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) 
        VALUES (10, 'Ambient', 8)
SELECT * FROM dual;


-- Data for the utwor table
INSERT ALL
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (1, 'Shape of You', 'Ed Sheeran', 'Universal', 1)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (2, 'Ona tańczy dla mnie', 'Weekend', 'Independent', 2)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (3, 'We Will Rock You', 'Queen', 'Sony Music', 3)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (4, 'Baby Shark', 'Pinkfong', 'SmartStudy', 4)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (5, 'Eine kleine Nachtmusik', 'Wolfgang Amadeus Mozart', 'Public Domain', 5)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (6, 'Lose Yourself', 'Eminem', 'Aftermath', 6)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (7, 'Take Five', 'Dave Brubeck', 'Sony Music', 7)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (8, 'Hej Sokoły', 'Tradycyjny', 'Folk', 8)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (9, 'Animals', 'Martin Garrix', 'Spinnin Records', 9)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) 
        VALUES (10, 'Weightless', 'Marconi Union', 'Ambient Music', 10)
SELECT * FROM dual;


-- Data for the kontakt_do_pracownika table
INSERT ALL
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (1, 'anna.kowalska@example.com', '123456789', 1)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (2, 'jan.nowak@example.com', '987654321', 2)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (3, 'maria.wisniewska@example.com', '555111222', 3)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (4, 'piotr.zielinski@example.com', '444222333', 4)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (5, 'katarzyna.kaminska@example.com', '666333444', 5)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (6, 'tomasz.lewandowski@example.com', '777888999', 6)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (7, 'agnieszka.szymanska@example.com', '888999777', 7)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (8, 'michal.dabrowski@example.com', '222333444', 8)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (9, 'barbara.kaczmarek@example.com', '111222333', 9)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk) 
        VALUES (10, 'rafal.pawlak@example.com', '999888777', 10)
SELECT * FROM dual;


-- Data for the kontakt_do_klienta table
INSERT ALL
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (1, 'anna.novak@example.com', '123456789', 1)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (2, 'jan.kowalski@example.com', '987654321', 2)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (3, 'maria.nowak@example.com', '555111222', 3)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (4, 'piotr.wisniewski@example.com', '444222333', 4)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (5, 'katarzyna.zielinska@example.com', '666333444', 5)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (6, 'tomasz.kaminski@example.com', '777888999', 6)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (7, 'agnieszka.dabrowska@example.com', '888999777', 7)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (8, 'michal.lewandowski@example.com', '222333444', 8)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (9, 'barbara.szymanska@example.com', '111222333', 9)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) 
        VALUES (10, 'rafal.kaczmarek@example.com', '999888777', 10)
SELECT * FROM dual;


-- Data for the zlecenia table
INSERT ALL
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (1, 500.00, DATE '2025-01-10', 'Nowe', 1, 1)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (2, 650.00, DATE '2025-01-11', 'W trakcie', 2, 2)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (3, 900.00, DATE '2025-01-12', 'Zakończone', 3, 3)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (4, 1100.00, DATE '2025-01-13', 'Nowe', 4, 4)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (5, 800.00, DATE '2025-01-14', 'W trakcie', 5, 5)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (6, 450.00, DATE '2025-01-15', 'Anulowane', 6, 1)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (7, 700.00, DATE '2025-01-16', 'Nowe', 7, 2)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (8, 550.00, DATE '2025-01-17', 'Zakończone', 8, 3)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (9, 1200.00, DATE '2025-01-18', 'W trakcie', 9, 4)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) 
        VALUES (10, 1000.00, DATE '2025-01-19', 'Anulowane', 10, 5)
SELECT * FROM dual;


-- Data for the pracownik_na_zlecenie table
INSERT ALL
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (1, 1)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (2, 2)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (3, 3)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (4, 4)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (5, 5)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (6, 6)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (7, 7)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (8, 8)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (9, 9)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) 
        VALUES (10, 10)
SELECT * FROM dual;


-- Data for thei wydarzenie table
INSERT ALL
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (1, 'Urodziny Anii', 'Przyjęcie', DATE '2025-02-01', 1)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (2, 'Piknik Rodzinny', 'Plenerowe', DATE '2025-02-02', 2)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (3, 'Wesele Marii i Pawła', 'Przyjęcie', DATE '2025-02-03', 3)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (4, 'Warsztaty Plastyczne', 'Edukacyjne', DATE '2025-02-04', 4)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (5, 'Impreza Firmowa', 'Integracyjne', DATE '2025-02-05', 5)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (6, 'Bal Przebierańców', 'Karnawałowe', DATE '2025-02-06', 6)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (7, 'Festyn Szkolny', 'Plenerowe', DATE '2025-02-07', 7)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (8, 'Andrzejki', 'Wieczór Tematyczny', DATE '2025-02-08', 8)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (9, 'Warsztaty Kreatywne', 'Edukacyjne', DATE '2025-02-09', 9)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) 
        VALUES (10, 'Jubileusz', 'Uroczystość', DATE '2025-02-10', 10)
SELECT * FROM dual;


-- Data for the lokalizacja table
INSERT ALL
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (1, 'Blisko parku', 1)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (2, 'Sala z klimatyzacją', 2)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (3, 'Duży parking', 3)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (4, 'Blisko komunikacji miejskiej', 4)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (5, 'Sala z widokiem na ogród', 5)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (6, NULL, 6)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (7, 'Przestrzeń otwarta', 7)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (8, 'Mała sala, przytulna atmosfera', 8)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (9, 'Blisko centrum miasta', 9)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) 
        VALUES (10, 'Sala na ostatnim piętrze', 10)
SELECT * FROM dual;


-- Data for the adresy_lokalizacji table
INSERT ALL
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (1, 1, 1)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (2, 2, 2)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (3, 3, 3)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (4, 4, 4)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (5, 5, 5)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (6, 6, 6)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (7, 7, 7)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (8, 8, 8)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (9, 9, 9)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk)
        VALUES (10, 10, 10)
SELECT * FROM dual;


-- Data for the transport table
INSERT ALL
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (1, 'Autobus', 'WAW12345', 50, 'Duża', 1)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (2, 'Samochód osobowy', 'KRK54321', 4, 'Mała', 2)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (3, 'Minibus', 'LOD11223', 15, 'Średnia', 3)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (4, 'Ciężarówka', 'WRO99887', NULL, 'Bardzo Duża', 4)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (5, 'VAN', 'POZ77654', 7, 'Średnia', 5)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (6, 'Autobus', 'GDA33445', 60, 'Duża', 6)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (7, 'Samochód osobowy', 'SZC22433', 5, 'Mała', 7)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (8, 'Minibus', 'BDG99221', 10, 'Średnia', 8)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (9, 'VAN', 'LUB77688', 8, 'Średnia', 9)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) 
        VALUES (10, 'Autobus', 'KAT11234', 55, 'Duża', 10)
SELECT * FROM dual;


-- Data for the informacja_zwrotna table
INSERT ALL
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (1, 550.00, INTERVAL '01:00:00' HOUR TO SECOND, 1)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (2, 700.00, INTERVAL '00:30:00' HOUR TO SECOND, 2)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (3, 950.00, NULL, 3)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (4, 1200.00, INTERVAL '02:00:00' HOUR TO SECOND, 4)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (5, 850.00, INTERVAL '00:45:00' HOUR TO SECOND, 5)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (6, 500.00, NULL, 6)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (7, 750.00, INTERVAL '01:30:00' HOUR TO SECOND, 7)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (8, 600.00, NULL, 8)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (9, 1300.00, INTERVAL '03:00:00' HOUR TO SECOND, 9)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) 
        VALUES (10, 1000.00, NULL, 10)
SELECT * FROM dual;


-- Data for the opinia_klienta table
INSERT ALL
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (1, '5/5', 'Wszystko było świetnie zorganizowane!', 1, 1)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (2, '4/5', 'Było dobrze, ale muzyka mogła być lepsza.', 2, 2)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (3, '5/5', 'Dzieci były zachwycone atrakcjami.', 3, 3)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (4, '3/5', 'Organizacja była dobra, ale zabrakło kilku elementów.', 4, 4)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (5, '4/5', 'Przyjemne wydarzenie, ale miejsce było za małe.', 5, 5)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (6, '5/5', 'Animatorzy byli świetni, dzieci były szczęśliwe.', 6, 6)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (7, '4/5', 'Trochę opóźnione rozpoczęcie, ale reszta świetna.', 7, 7)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (8, '5/5', 'Idealne wydarzenie, wszyscy goście zadowoleni.', 8, 8)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (9, '3/5', 'Dobra organizacja, ale zabrakło atrakcji dla dorosłych.', 9, 9)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) 
        VALUES (10, '5/5', 'Nie mam żadnych uwag, wszystko super.', 10, 10)
SELECT * FROM dual;
