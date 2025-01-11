-- przykładowe dane do tabeli klienci
INSERT ALL
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (1, 'Jan', 'Kowalski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (2, 'Anna', 'Nowak')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (3, 'Piotr', 'Zieliński')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (4, 'Katarzyna', 'Wiśniewska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (5, 'Tomasz', 'Dębicki')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (6, 'Monika', 'Król')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (7, 'Paweł', 'Sikorski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (8, 'Joanna', 'Adamska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (9, 'Michał', 'Górski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (10, 'Ewa', 'Kaczmarek')
SELECT 1 FROM DUAL;


-- przykladowe dane do tabeli pracownicy
INSERT ALL
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (1, 'Jan', 'Nowicki')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (2, 'Anna', 'Kowalczyk')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (3, 'Piotr', 'Mazur')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (4, 'Katarzyna', 'Pawlak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (5, 'Tomasz', 'Szymczak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (6, 'Monika', 'Wysocka')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (7, 'Paweł', 'Baran')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (8, 'Joanna', 'Jędrzejczyk')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (9, 'Michał', 'Sobczak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (10, 'Ewa', 'Zalewska')
SELECT 1 FROM DUAL;


-- przykladowe dane do tabeli adresy
INSERT ALL
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (1, 'Polna', 12, 4)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (2, 'Leśna', 5, 2)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (3, 'Ogrodowa', 8, 10)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (4, 'Słoneczna', 20, 3)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (5, 'Kwiatowa', 7, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (6, 'Długa', 15, 1)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (7, 'Krótka', 2, 5)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (8, 'Spacerowa', 30, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (9, 'Lipowa', 18, 6)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (10, 'Cicha', 10, NULL)
SELECT 1 FROM DUAL;


-- Przykładowe dane do tabeli miejscowosci
INSERT ALL
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (1, 'Warszawa', '00-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (2, 'Kraków', '30-002')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (3, 'Poznań', '60-003')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (4, 'Łódź', '90-004')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (5, 'Wrocław', '50-005')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (6, 'Gdańsk', '80-006')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (7, 'Katowice', '40-007')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (8, 'Lublin', '20-008')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (9, 'Szczecin', '70-009')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (10, 'Bydgoszcz', '85-010')
SELECT 1 FROM DUAL;



-- Przykładowe dane do tabeli oferty
INSERT ALL
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (1, 'Internet', 59.99, INTERVAL '30' SECOND, 'Szybki internet do 100 Mbps')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (2, 'Telefon', 29.99, INTERVAL '30' SECOND, 'Nielimitowane rozmowy i SMSy')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (3, 'Telewizja', 79.99, INTERVAL '30' SECOND, '150 kanałów w tym 50 HD')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (4, 'Internet + Telefon', 79.99, INTERVAL '30' SECOND, 'Internet do 100 Mbps + rozmowy')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (5, 'Internet + Telewizja', 129.99, INTERVAL '30' SECOND, 'Internet do 300 Mbps + 150 kanałów')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (6, 'Premium', 199.99, INTERVAL '30' SECOND, 'Wszystko w jednym: internet, telefon i telewizja')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (7, 'Streaming', 49.99, INTERVAL '30' SECOND, 'Pakiet VOD z filmami i serialami')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (8, 'Gaming', 99.99, INTERVAL '30' SECOND, 'Internet do 1 Gbps dla graczy')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (9, 'Rodzinny', 149.99, INTERVAL '30' SECOND, 'Pakiet rodzinny: internet, telewizja, telefon')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (10, 'Biznesowy', 299.99, INTERVAL '30' SECOND, 'Pakiet biznesowy z dedykowanym wsparciem')
SELECT 1 FROM DUAL;



-- Przykładowe dane do tabeli zamowienia
INSERT ALL
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (1, 'Jan Kowalski', 'Kurier', 'Anna Nowak')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (2, 'Maria Wiśniewska', 'Odbiór osobisty', 'Piotr Zieliński')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (3, 'Tomasz Dębicki', 'Paczkomat', 'Katarzyna Pawlak')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (4, 'Joanna Adamska', 'Kurier', 'Monika Król')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (5, 'Michał Górski', 'Odbiór osobisty', 'Paweł Sikorski')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (6, 'Ewa Kaczmarek', 'Paczkomat', 'Tomasz Szymczak')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (7, 'Katarzyna Wiśniewska', 'Kurier', 'Michał Sobczak')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (8, 'Anna Kowalczyk', 'Odbiór osobisty', 'Joanna Jędrzejczyk')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (9, 'Piotr Mazur', 'Paczkomat', 'Ewa Zalewska')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (10, 'Tomasz Baran', 'Kurier', 'Paweł Baran')
SELECT 1 FROM DUAL;





-- TABELE Z KLUCZEM OBCYM




-- Przykładowe dane do tabeli adresy_klientow
INSERT ALL
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (1, 1, 1)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (2, 2, 2)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (3, 3, 3)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (4, 4, 4)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (5, 5, 5)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (6, 6, 6)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (7, 7, 7)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (8, 8, 8)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (9, 9, 9)
    INTO adresy_klientow (klienci_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (10, 10, 10)
SELECT 1 FROM DUAL;


-- Przykładowe dane do tabeli adresy_pracownikow
INSERT ALL
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (1, 1, 1)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (2, 2, 2)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (3, 3, 3)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (4, 4, 4)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (5, 5, 5)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (6, 6, 6)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (7, 7, 7)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (8, 8, 8)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (9, 9, 9)
    INTO adresy_pracownikow (adresy_id_fk, pracownicy_id_fk, miejscowosci_id_fk) VALUES (10, 10, 10)
SELECT 1 FROM DUAL;



-- Przykładowe dane do tabeli czas_zamowienia
INSERT ALL
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (1, DATE '2025-01-15', INTERVAL '14:30:00' HOUR TO SECOND, DATE '2025-01-14', INTERVAL '10:00:00' HOUR TO SECOND, 1)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (2, DATE '2025-01-16', INTERVAL '09:00:00' HOUR TO SECOND, DATE '2025-01-15', INTERVAL '15:00:00' HOUR TO SECOND, 2)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (3, DATE '2025-01-17', INTERVAL '16:45:00' HOUR TO SECOND, DATE '2025-01-16', INTERVAL '11:20:00' HOUR TO SECOND, 3)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (4, DATE '2025-01-18', INTERVAL '13:15:00' HOUR TO SECOND, DATE '2025-01-17', INTERVAL '09:30:00' HOUR TO SECOND, 4)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (5, DATE '2025-01-19', INTERVAL '18:00:00' HOUR TO SECOND, DATE '2025-01-18', INTERVAL '08:45:00' HOUR TO SECOND, 5)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (6, DATE '2025-01-20', INTERVAL '12:30:00' HOUR TO SECOND, DATE '2025-01-19', INTERVAL '14:00:00' HOUR TO SECOND, 6)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (7, DATE '2025-01-21', INTERVAL '11:15:00' HOUR TO SECOND, DATE '2025-01-20', INTERVAL '10:45:00' HOUR TO SECOND, 7)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (8, DATE '2025-01-22', INTERVAL '17:00:00' HOUR TO SECOND, DATE '2025-01-21', INTERVAL '13:30:00' HOUR TO SECOND, 8)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (9, DATE '2025-01-23', INTERVAL '15:45:00' HOUR TO SECOND, DATE '2025-01-22', INTERVAL '08:00:00' HOUR TO SECOND, 9)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk)
    VALUES (10, DATE '2025-01-24', INTERVAL '10:15:00' HOUR TO SECOND, DATE '2025-01-23', INTERVAL '16:30:00' HOUR TO SECOND, 10)
SELECT 1 FROM DUAL;



-- Przykładowe dane do tabeli grupy_materialow
INSERT ALL
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (1, 'Materiały budowlane', 1)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (2, 'Materiały wykończeniowe', 2)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (3, 'Elektronarzędzia', 3)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (4, 'Farby i lakiery', 4)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (5, 'Materiały instalacyjne', 5)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (6, 'Materiały dachowe', 6)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (7, 'Narzędzia ręczne', 7)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (8, 'Elementy śrubowe', 8)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (9, 'Materiały ogrodowe', 9)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (10, 'Materiały izolacyjne', 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli materialy
INSERT ALL
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (1, 'Cement', 100, 50, 1)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (2, 'Piasek', 200, 150, 1)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (3, 'Farba biała', 80, 60, 4)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (4, 'Klej do płytek', 50, 30, 2)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (5, 'Wkręty', 500, 300, 8)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (6, 'Płyty gipsowe', 40, 20, 5)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (7, 'Folia izolacyjna', 30, 25, 10)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (8, 'Tynk', 70, 50, 1)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (9, 'Rury PCV', 120, 100, 5)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk)
    VALUES (10, 'Gwoździe', 1000, 800, 7)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli uzyte_materialy
INSERT ALL
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (1, 1)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (2, 2)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (3, 3)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (4, 4)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (5, 5)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (6, 6)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (7, 7)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (8, 8)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (9, 9)
    INTO uzyte_materialy (oferty_id_fk, materialy_id_fk) VALUES (10, 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli zabawy
INSERT ALL
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (1, 'Zabawa w chowanego', 'Gra zespołowa na świeżym powietrzu', 2, 10, 1)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (2, 'Piłka nożna', 'Rozgrywki drużynowe', 1, 22, 2)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (3, 'Malowanie', 'Zajęcia plastyczne dla dzieci', 3, 15, 3)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (4, 'Budowanie zamków', 'Zabawa z piaskiem i cegłami', 2, 8, 4)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (5, 'Zawody sportowe', 'Biegi i skoki przez przeszkody', 2, 20, 5)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (6, 'Gra planszowa', 'Strategiczna gra zespołowa', 1, 4, 6)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (7, 'Taniec', 'Zajęcia ruchowe przy muzyce', 2, 12, 7)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (8, 'Wyścigi rzędów', 'Rywalizacja drużynowa', 2, 16, 8)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (9, 'Zabawa wodna', 'Zajęcia przy użyciu wody', 3, 20, 9)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk)
    VALUES (10, 'Zbijak', 'Gra zręcznościowa z piłką', 1, 12, 10)
SELECT 1 FROM DUAL;





-- Przykładowe dane do tabeli grupy_wiekowe
INSERT ALL
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (1, 3, 5, 1)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (2, 6, 8, 2)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (3, 9, 12, 3)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (4, 13, 15, 4)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (5, 16, 18, 5)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (6, 19, 21, 6)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (7, 22, 25, 7)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (8, 26, 30, 8)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (9, 31, 35, 9)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk)
    VALUES (10, 36, 40, 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli gatunek_muzyczny
INSERT ALL
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (1, 'Pop', 1)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (2, 'Rock', 2)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (3, 'Hip-Hop', 3)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (4, 'Jazz', 4)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (5, 'Classical', 5)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (6, 'Reggae', 6)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (7, 'Electronic', 7)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (8, 'Folk', 8)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (9, 'Blues', 9)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (10, 'Country', 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli utwor
INSERT ALL
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (1, 'Imagine', 'John Lennon', 'Open', 1)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (2, 'Bohemian Rhapsody', 'Queen', 'Standard', 2)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (3, 'Lose Yourself', 'Eminem', 'Standard', 3)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (4, 'Take Five', 'Dave Brubeck', 'Open', 4)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (5, 'Für Elise', 'Ludwig van Beethoven', 'Public Domain', 5)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (6, 'One Love', 'Bob Marley', 'Open', 6)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (7, 'Strobe', 'Deadmau5', 'Standard', 7)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (8, 'The Sound of Silence', 'Simon & Garfunkel', 'Standard', 8)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (9, 'Crossroads', 'Robert Johnson', 'Public Domain', 9)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk)
    VALUES (10, 'Take Me Home, Country Roads', 'John Denver', 'Standard', 10)
SELECT 1 FROM DUAL;


-- Przykładowe dane do tabeli kontakt_do_pracownika
INSERT ALL
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (1, 'jan.nowicki@example.com', '123456789', 1)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (2, 'anna.kowalczyk@example.com', '987654321', 2)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (3, 'piotr.mazur@example.com', '112233445', 3)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (4, 'katarzyna.pawlak@example.com', '223344556', 4)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (5, 'tomasz.szymczak@example.com', '334455667', 5)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (6, 'monika.wysocka@example.com', '445566778', 6)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (7, 'pawel.baran@example.com', '556677889', 7)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (8, 'joanna.jedrzejczyk@example.com', '667788990', 8)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (9, 'michal.sobczak@example.com', '778899001', 9)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_email_pracownika, numer_telefonu_pracownika, pracownicy_id_fk)
    VALUES (10, 'ewa.zalewska@example.com', '889900112', 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli kontakt_do_klienta
INSERT ALL
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (1, 'jan.kowalski@example.com', '123456789', 1)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (2, 'anna.nowak@example.com', '987654321', 2)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (3, 'piotr.zielinski@example.com', '112233445', 3)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (4, 'katarzyna.wisniewska@example.com', '223344556', 4)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (5, 'tomasz.debicki@example.com', '334455667', 5)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (6, 'monika.krol@example.com', '445566778', 6)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (7, 'pawel.sikorski@example.com', '556677889', 7)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (8, 'joanna.adamska@example.com', '667788990', 8)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (9, 'michal.gorski@example.com', '778899001', 9)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk)
    VALUES (10, 'ewa.kaczmarek@example.com', '889900112', 10)
SELECT 1 FROM DUAL;


-- Przykładowe dane do tabeli zlecenia
INSERT ALL
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (1, 1200.00, DATE '2025-01-01', 'Nowe', 1, 1)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (2, 1500.50, DATE '2025-01-02', 'W trakcie', 2, 2)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (3, 1800.75, DATE '2025-01-03', 'Zakończone', 3, 3)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (4, 2200.00, DATE '2025-01-04', 'Anulowane', 4, 4)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (5, 1300.20, DATE '2025-01-05', 'Nowe', 5, 5)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (6, 1700.00, DATE '2025-01-06', 'W trakcie', 6, 6)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (7, 2100.90, DATE '2025-01-07', 'Zakończone', 7, 7)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (8, 1400.30, DATE '2025-01-08', 'Anulowane', 8, 8)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (9, 1250.60, DATE '2025-01-09', 'Nowe', 9, 9)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk)
    VALUES (10, 1900.40, DATE '2025-01-10', 'W trakcie', 10, 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli pracownik_na_zlecenie
INSERT ALL
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (1, 1)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (2, 2)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (3, 3)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (4, 4)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (5, 5)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (6, 6)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (7, 7)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (8, 8)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (9, 9)
    INTO pracownik_na_zlecenie (zlecenia_id_fk, pracownicy_id_fk) VALUES (10, 10)
SELECT 1 FROM DUAL;





-- Przykładowe dane do tabeli wydarzenie
INSERT ALL
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (1, 'Koncert Noworoczny', 'Koncert', DATE '2025-01-15', 1)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (2, 'Warsztaty Artystyczne', 'Warsztaty', DATE '2025-01-20', 2)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (3, 'Festiwal Muzyki', 'Festiwal', DATE '2025-02-10', 3)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (4, 'Pokaz Tańca', 'Pokaz', DATE '2025-02-14', 4)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (5, 'Turniej Szachowy', 'Turniej', DATE '2025-03-01', 5)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (6, 'Spotkanie Biznesowe', 'Spotkanie', DATE '2025-03-05', 6)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (7, 'Prelekcja Edukacyjna', 'Prelekcja', DATE '2025-03-10', 7)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (8, 'Gala Filmowa', 'Gala', DATE '2025-03-20', 8)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (9, 'Bieg Charytatywny', 'Bieg', DATE '2025-04-01', 9)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk)
    VALUES (10, 'Wystawa Sztuki', 'Wystawa', DATE '2025-04-15', 10)
SELECT 1 FROM DUAL;





-- Przykładowe dane do tabeli lokalizacja
INSERT ALL
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (1, 'Sala koncertowa na 200 osób', 1)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (2, 'Pracownia artystyczna z dużymi stołami', 2)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (3, 'Scena na świeżym powietrzu', 3)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (4, 'Sala taneczna z lustrami', 4)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (5, 'Klub szachowy w centrum miasta', 5)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (6, 'Sala konferencyjna na 50 osób', 6)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (7, 'Aula uniwersytecka', 7)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (8, 'Sala kinowa w centrum kultury', 8)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (9, 'Trasa biegowa w parku miejskim', 9)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie)
    VALUES (10, 'Galeria sztuki współczesnej', 10)
SELECT 1 FROM DUAL;





-- Przykładowe dane do tabeli adresy_lokalizacji
INSERT ALL
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (1, 1, 1)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (2, 2, 2)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (3, 3, 3)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (4, 4, 4)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (5, 5, 5)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (6, 6, 6)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (7, 7, 7)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (8, 8, 8)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (9, 9, 9)
    INTO adresy_lokalizacji (lokalizacja_id_fk, adresy_id_fk, miejscowosci_id_fk) VALUES (10, 10, 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli transport
INSERT ALL
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (1, 'Autobus', 'KR12345', 50, 'Duża', 1)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (2, 'Samochód osobowy', 'WA98765', 5, 'Mała', 2)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (3, 'Bus', 'GD11223', 20, 'Średnia', 3)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (4, 'Ciężarówka', 'PO44556', NULL, 'Bardzo Duża', 4)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (5, 'Minivan', 'WR77889', 7, 'Mała', 5)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (6, 'Motocykl', 'LU99001', 1, 'Bardzo Mała', 6)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (7, 'Rower', 'GD12345', NULL, 'Bardzo Mała', 7)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (8, 'Statek', 'SR54321', 200, 'Bardzo Duża', 8)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (9, 'Helikopter', 'HL12345', 10, 'Średnia', 9)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk)
    VALUES (10, 'Pociąg', 'PKP123', 300, 'Bardzo Duża', 10)
SELECT 1 FROM DUAL;





-- Przykładowe dane do tabeli informacja_zwrotna
INSERT ALL
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (1, 1500.00, INTERVAL '02:00:00' HOUR TO SECOND, 1)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (2, 2000.50, INTERVAL '03:30:00' HOUR TO SECOND, 2)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (3, 1800.75, NULL, 3)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (4, 2500.00, INTERVAL '00:00:00' HOUR TO SECOND, 4)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (5, 1300.20, NULL, 5)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (6, 1700.00, INTERVAL '01:45:00' HOUR TO SECOND, 6)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (7, 2100.90, NULL, 7)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (8, 1400.30, INTERVAL '04:15:00' HOUR TO SECOND, 8)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (9, 1250.60, NULL, 9)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk)
    VALUES (10, 1900.40, INTERVAL '02:30:00' HOUR TO SECOND, 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli opinia_klienta
INSERT ALL
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (1, '5/5', 'Świetna organizacja wydarzenia!', 1, 1)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (2, '4/5', 'Dobra obsługa, ale drobne opóźnienia.', 2, 2)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (3, '3/5', 'Mogło być lepiej, brakowało koordynacji.', 3, 3)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (4, '5/5', 'Zdecydowanie polecam, wszystko perfekcyjnie!', 4, 4)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (5, '4/5', 'Dobra jakość usług, drobne niedociągnięcia.', 5, 5)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (6, '5/5', 'Profesjonalizm na najwyższym poziomie!', 6, 6)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (7, '3/5', 'Średnio zorganizowane, ale da się przeżyć.', 7, 7)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (8, '5/5', 'Najlepsze wydarzenie, na jakim byłem!', 8, 8)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (9, '4/5', 'Dobry kontakt z organizatorem.', 9, 9)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk)
    VALUES (10, '5/5', 'Wszystko zgodnie z planem!', 10, 10)
SELECT 1 FROM DUAL;
