-- Przykładowe dane do tabeli klienci
INSERT ALL
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (1, 'Jan', 'Kowalski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (2, 'Anna', 'Nowak')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (3, 'Piotr', 'Zieliński')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (4, 'Maria', 'Wiśniewska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (5, 'Tomasz', 'Lewandowski')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (6, 'Ewa', 'Kamińska')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (7, 'Marek', 'Zawadzki')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (8, 'Joanna', 'Wójcik')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (9, 'Karol', 'Kaczmarek')
    INTO klienci (id_klienci, imie_klienta, nazwisko_klienta) VALUES (10, 'Katarzyna', 'Jankowska')
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli pracownicy
INSERT ALL
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (1, 'Adam', 'Nowicki')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (2, 'Beata', 'Szymańska')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (3, 'Krzysztof', 'Wiśniewski')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (4, 'Dorota', 'Kwiatkowska')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (5, 'Paweł', 'Jabłoński')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (6, 'Zofia', 'Adamska')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (7, 'Wojciech', 'Pawlak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (8, 'Magdalena', 'Sobczak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (9, 'Grzegorz', 'Kubiak')
    INTO pracownicy (id_pracownicy, imie_pracownika, nazwisko_pracownika) VALUES (10, 'Agnieszka', 'Chmielewska')
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli adresy
INSERT ALL
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (1, 'Jasna', 10, 5)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (2, 'Mickiewicza', 25, 12)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (3, 'Kwiatowa', 7, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (4, 'Zielona', 15, 1)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (5, 'Lipowa', 8, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (6, 'Słoneczna', 20, 3)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (7, 'Długa', 11, 6)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (8, 'Krótka', 5, NULL)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (9, 'Spacerowa', 22, 4)
    INTO adresy (id_adresy, ulica, numer_budynku, numer_mieszkania) VALUES (10, 'Widokowa', 17, NULL)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli miejscowosci
INSERT ALL
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (1, 'Warszawa', '00-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (2, 'Kraków', '30-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (3, 'Gdańsk', '80-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (4, 'Wrocław', '50-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (5, 'Poznań', '60-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (6, 'Szczecin', '70-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (7, 'Lublin', '20-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (8, 'Katowice', '40-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (9, 'Bydgoszcz', '85-001')
    INTO miejscowosci (id_miejscowosci, nazwa_miejscowosci, kod_pocztowy) VALUES (10, 'Łódź', '90-001')
SELECT * FROM DUAL;



------------------------------------


-- Przykładowe dane do tabeli oferty
INSERT ALL
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (1, 'Standard', 500, INTERVAL '30' SECOND, 'Podstawowy pakiet usług')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (2, 'Premium', 1000, INTERVAL '60' SECOND, 'Rozszerzony pakiet usług')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (3, 'VIP', 1500, INTERVAL '90' SECOND, 'Pakiet VIP z dodatkowymi udogodnieniami')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (4, 'Economy', 300, INTERVAL '15' SECOND, 'Pakiet ekonomiczny')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (5, 'Business', 2000, INTERVAL '120' SECOND, 'Pakiet biznesowy')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (6, 'Exclusive', 2500, INTERVAL '180' SECOND, 'Pakiet ekskluzywny')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (7, 'Standard Plus', 750, INTERVAL '45' SECOND, 'Podstawowy pakiet z dodatkami')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (8, 'Gold', 1800, INTERVAL '75' SECOND, 'Pakiet Gold')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (9, 'Silver', 1300, INTERVAL '50' SECOND, 'Pakiet Silver')
    INTO oferty (id_oferty, typ_pakietu_oferty, cena_pakietu, czas_trwania_oferty, opis_oferty) VALUES (10, 'Platinum', 3000, INTERVAL '200' SECOND, 'Pakiet Platinum')
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli zamowienia
INSERT ALL
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (1, 'Jan Kowalski', 'Kurier', 'Jan Kowalski')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (2, 'Anna Nowak', 'Odbiór osobisty', 'Anna Nowak')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (3, 'Piotr Zieliński', 'Kurier', 'Piotr Zieliński')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (4, 'Maria Wiśniewska', 'Kurier', 'Maria Wiśniewska')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (5, 'Tomasz Lewandowski', 'Odbiór osobisty', 'Tomasz Lewandowski')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (6, 'Ewa Kamińska', 'Kurier', 'Ewa Kamińska')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (7, 'Marek Zawadzki', 'Odbiór osobisty', 'Marek Zawadzki')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (8, 'Joanna Wójcik', 'Kurier', 'Joanna Wójcik')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (9, 'Karol Kaczmarek', 'Odbiór osobisty', 'Karol Kaczmarek')
    INTO zamowienia (id_zamowienia, osoba_do_odbioru_zamowienia, sposob_dostawy_zamowienia, osoba_zamawiajaca) VALUES (10, 'Katarzyna Jankowska', 'Kurier', 'Katarzyna Jankowska')
SELECT * FROM DUAL;



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
SELECT * FROM DUAL;


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
SELECT * FROM DUAL;



-- Przykładowe dane do tabeli czas_zamowienia
INSERT ALL
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (1, TO_DATE('2025-01-15', 'YYYY-MM-DD'), INTERVAL '45' SECOND, TO_DATE('2025-01-10', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 1)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (2, TO_DATE('2025-01-16', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-11', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 2)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (3, TO_DATE('2025-01-17', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-12', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 3)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (4, TO_DATE('2025-01-18', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-13', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 4)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (5, TO_DATE('2025-01-19', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-14', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 5)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (6, TO_DATE('2025-01-20', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-15', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 6)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (7, TO_DATE('2025-01-21', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-16', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 7)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (8, TO_DATE('2025-01-22', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-17', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 8)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (9, TO_DATE('2025-01-23', 'YYYY-MM-DD'),INTERVAL '45' SECOND, TO_DATE('2025-01-18', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 9)
    INTO czas_zamowienia (id_czas_zamowienia, data_dostawy_zamowienia, godzina_dostawy_zamowienia, data_zakupu_zamowienia, godzina_zakupu_zamowienia, zamowienia_id_fk) VALUES (10, TO_DATE('2025-01-24', 'YYYY-MM-DD'), INTERVAL '45' SECOND , TO_DATE('2025-01-19', 'YYYY-MM-DD'), INTERVAL '30' SECOND, 10)
SELECT * FROM DUAL;



-- Przykładowe dane do tabeli grupy_materialow
INSERT ALL
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (1, 'Materiały biurowe', 1)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (2, 'Materiały budowlane', 2)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (3, 'Materiały edukacyjne', 3)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (4, 'Materiały reklamowe', 4)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (5, 'Materiały techniczne', 5)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (6, 'Materiały wykończeniowe', 6)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (7, 'Materiały szkoleniowe', 7)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (8, 'Materiały artystyczne', 8)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (9, 'Materiały transportowe', 9)
    INTO grupy_materialow (id_grupy_materialow, nazwa_grupy_materialow, zamowienia_id_fk) VALUES (10, 'Materiały medyczne', 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli materialy
INSERT ALL
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (1, 'Papier', 500, 200, 1)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (2, 'Beton', 1000, 800, 2)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (3, 'Podręczniki', 300, 150, 3)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (4, 'Ulotki', 2000, 1000, 4)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (5, 'Śruby', 5000, 2500, 5)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (6, 'Płytki', 1200, 800, 6)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (7, 'Zeszyty', 100, 50, 7)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (8, 'Farby', 300, 150, 8)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (9, 'Opakowania', 500, 400, 9)
    INTO materialy (id_materialu, nazwa_materialu, dostepna_ilosc_materialow, wymagana_ilosc_materialow, grupy_materialow_id_fk) VALUES (10, 'Strzykawki', 200, 100, 10)
SELECT * FROM DUAL;


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
SELECT * FROM DUAL;




-- Przykładowe dane do tabeli zabawy
INSERT ALL
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (1, 'Gry planszowe', 'Zabawa w grupie przy planszówkach', 2, 10, 1)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (2, 'Kalambury', 'Zgadywanie haseł poprzez rysowanie lub pokazywanie', 1, 15, 2)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (3, 'Warsztaty plastyczne', 'Tworzenie rękodzieła z różnych materiałów', 3, 20, 3)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (4, 'Quiz wiedzy', 'Rywalizacja w pytaniach z wiedzy ogólnej', 1, 30, 4)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (5, 'Zabawy ruchowe', 'Aktywności fizyczne na świeżym powietrzu', 2, 25, 5)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (6, 'Teatrzyk', 'Odtwarzanie scenek teatralnych', 3, 12, 6)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (7, 'Zabawa w chowanego', 'Tradycyjna gra polegająca na szukaniu ukrytych', 1, 15, 7)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (8, 'Budowanie z klocków', 'Tworzenie konstrukcji z klocków', 2, 10, 8)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (9, 'Zabawy logiczne', 'Rozwiązywanie zagadek i łamigłówek', 2, 20, 9)
    INTO zabawy (id_zabawy, nazwa_zabawy, opis_zabawy, ilosc_animatorow_do_zabawy, ilosc_uczestnikow_do_zabawy, materialy_id_fk) VALUES (10, 'Turniej szachowy', 'Rywalizacja w grze w szachy', 1, 16, 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli grupy_wiekowe
INSERT ALL
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (1, 3, 5, 1)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (2, 6, 10, 2)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (3, 11, 15, 3)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (4, 16, 18, 4)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (5, 19, 25, 5)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (6, 26, 35, 6)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (7, 36, 50, 7)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (8, 51, 65, 8)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (9, 66, 80, 9)
    INTO grupy_wiekowe (id_grupy_wiekowe, minimalny_wiek_grupy_wiekowej, maksymalny_wiek_grupy_wiekowej, zabawy_id_fk) VALUES (10, 81, 100, 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli gatunek_muzyczny
INSERT ALL
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (1, 'Pop', 1)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (2, 'Rock', 2)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (3, 'Jazz', 3)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (4, 'Classical', 4)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (5, 'Hip-Hop', 5)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (6, 'Electronic', 6)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (7, 'Country', 7)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (8, 'Blues', 8)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (9, 'Reggae', 9)
    INTO gatunek_muzyczny (id_gatunek_muzyczny, nazwa_gatunku_muzycznego, grupy_wiekowe_id_fk) VALUES (10, 'Soul', 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli utwor
INSERT ALL
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (1, 'Imagine', 'John Lennon', 'Open', 1)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (2, 'Bohemian Rhapsody', 'Queen', 'Copyrighted', 2)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (3, 'Take Five', 'Dave Brubeck', 'Public Domain', 3)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (4, 'Für Elise', 'Ludwig van Beethoven', 'Public Domain', 4)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (5, 'Lose Yourself', 'Eminem', 'Copyrighted', 5)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (6, 'Strobe', 'Deadmau5', 'Copyrighted', 6)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (7, 'Ring of Fire', 'Johnny Cash', 'Copyrighted', 7)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (8, 'The Thrill Is Gone', 'B.B. King', 'Copyrighted', 8)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (9, 'No Woman, No Cry', 'Bob Marley', 'Copyrighted', 9)
    INTO utwor (id_utwor, nazwa_utworu, wykonawca_utworu, licencja_utworu, gatunek_muzyczny_id_fk) VALUES (10, 'Respect', 'Aretha Franklin', 'Copyrighted', 10)
SELECT * FROM DUAL;



-- Przykładowe dane do tabeli kontakt_do_pracownika
INSERT ALL
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (1, 'adam.nowicki@example.com', '123456789', 1)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (2, 'beata.szymanska@example.com', '987654321', 2)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (3, 'krzysztof.wisniewski@example.com', '456123789', 3)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (4, 'dorota.kwiatkowska@example.com', '789456123', 4)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (5, 'pawel.jablonski@example.com', '321654987', 5)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (6, 'zofia.adamska@example.com', '654789321', 6)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (7, 'wojciech.pawlak@example.com', '987321654', 7)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (8, 'magdalena.sobczak@example.com', '123789456', 8)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (9, 'grzegorz.kubiak@example.com', '789123456', 9)
    INTO kontakt_do_pracownika (id_kontakt_do_pracownika, adres_do_pracownika, numer_telefonu_klienta, pracownicy_id_fk) VALUES (10, 'agnieszka.chmielewska@example.com', '456987123', 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli kontakt_do_klienta
INSERT ALL
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (1, 'jan.kowalski@example.com', '123456789', 1)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (2, 'anna.nowak@example.com', '987654321', 2)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (3, 'piotr.zielinski@example.com', '456123789', 3)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (4, 'maria.wisniewska@example.com', '789456123', 4)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (5, 'tomasz.lewandowski@example.com', '321654987', 5)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (6, 'ewa.kaminska@example.com', '654789321', 6)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (7, 'marek.zawadzki@example.com', '987321654', 7)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (8, 'joanna.wojcik@example.com', '123789456', 8)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (9, 'karol.kaczmarek@example.com', '789123456', 9)
    INTO kontakt_do_klienta (id_kontakt_do_klienta, adres_email_klienta, numer_telefonu_klienta, klienci_id_fk) VALUES (10, 'katarzyna.jankowska@example.com', '456987123', 10)
SELECT * FROM DUAL;



-- Przykładowe dane do tabeli zlecenia
INSERT ALL
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (1, 1200.50, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'Nowe', 1, 1)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (2, 2500.75, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'W trakcie', 2, 2)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (3, 1800.00, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'Zakończone', 3, 3)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (4, 1500.00, TO_DATE('2025-01-08', 'YYYY-MM-DD'), 'Anulowane', 4, 4)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (5, 2000.00, TO_DATE('2025-01-09', 'YYYY-MM-DD'), 'W trakcie', 5, 5)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (6, 3000.00, TO_DATE('2025-01-10', 'YYYY-MM-DD'), 'Zakończone', 6, 6)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (7, 1000.00, TO_DATE('2025-01-11', 'YYYY-MM-DD'), 'Nowe', 7, 7)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (8, 1700.00, TO_DATE('2025-01-12', 'YYYY-MM-DD'), 'Zakończone', 8, 8)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (9, 2500.00, TO_DATE('2025-01-13', 'YYYY-MM-DD'), 'W trakcie', 9, 9)
    INTO zlecenia (id_zlecenia, wstepna_cena_zlecenia, data_wystawienia_zlecenia, status_zlecenia, klienci_id_fk, oferty_id_fk) VALUES (10, 3500.00, TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'Zakończone', 10, 10)
SELECT * FROM DUAL;



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
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli wydarzenie
INSERT ALL
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (1, 'Koncert Noworoczny', 'Koncert', TO_DATE('2025-02-01', 'YYYY-MM-DD'), 1)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (2, 'Warsztaty Artystyczne', 'Warsztaty', TO_DATE('2025-02-15', 'YYYY-MM-DD'), 2)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (3, 'Targi Biznesowe', 'Targi', TO_DATE('2025-03-01', 'YYYY-MM-DD'), 3)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (4, 'Spotkanie Firmowe', 'Spotkanie', TO_DATE('2025-03-10', 'YYYY-MM-DD'), 4)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (5, 'Festiwal Muzyczny', 'Festiwal', TO_DATE('2025-03-20', 'YYYY-MM-DD'), 5)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (6, 'Seminarium Technologiczne', 'Seminarium', TO_DATE('2025-03-30', 'YYYY-MM-DD'), 6)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (7, 'Impreza Integracyjna', 'Impreza', TO_DATE('2025-04-10', 'YYYY-MM-DD'), 7)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (8, 'Konferencja Naukowa', 'Konferencja', TO_DATE('2025-04-20', 'YYYY-MM-DD'), 8)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (9, 'Pokaz Sztuki', 'Pokaz', TO_DATE('2025-04-25', 'YYYY-MM-DD'), 9)
    INTO wydarzenie (id_wydarzenie, nazwa_wydarzenia, typ_wydarzenia, data_wydarzenia, zlecenia_id_fk) VALUES (10, 'Premiera Produktu', 'Premiera', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli lokalizacja
INSERT ALL
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (1, 'Blisko parku', 1)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (2, 'Przy jeziorze', 2)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (3, 'W centrum miasta', 3)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (4, 'Obok stadionu', 4)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (5, 'Niedaleko dworca', 5)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (6, 'W dzielnicy biznesowej', 6)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (7, 'Na przedmieściach', 7)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (8, 'W pobliżu szkoły', 8)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (9, 'Na osiedlu mieszkalnym', 9)
    INTO lokalizacja (id_lokalizacja, uwagi_do_lokalizacji, wydarzenie_id_wydarzenie) VALUES (10, 'Przy plaży', 10)
SELECT 1 FROM DUAL;




-- Przykładowe dane do tabeli adresy_lokalizacji
INSERT ALL
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (1, 1, 1)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (2, 2, 2)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (3, 3, 3)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (4, 4, 4)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (5, 5, 5)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (6, 6, 6)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (7, 7, 7)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (8, 8, 8)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (9, 9, 9)
    INTO adresy_lokalizacji (adresy_id_fk, lokalizacja_id_fk, miejscowosci_id_fk) VALUES (10, 10, 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli transport
INSERT ALL
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (1, 'Autobus', 'WX12345', 50, '50 miejsc', 1)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (2, 'Bus', 'KR54321', 20, '20 miejsc', 2)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (3, 'Samochód', 'GD98765', 5, '5 miejsc', 3)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (4, 'Ciężarówka', 'PO11223', 2, '2000 kg', 4)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (5, 'Pociąg', 'LU66789', 300, '300 miejsc', 5)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (6, 'Helikopter', 'WA44567', 10, '10 miejsc', 6)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (7, 'Rower', 'NOPLATE1', 1, '1 miejsce', 7)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (8, 'Motocykl', 'BI99887', 2, '2 miejsca', 8)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (9, 'Statek', 'SZ12389', 500, '500 miejsc', 9)
    INTO transport (id_transport, rodzaj_transportu, tablica_rejestracyjna, ilosc_pasazerow_w_transporcie, pojemnosc_transportowa, wydarzenie_id_fk) VALUES (10, 'Samolot', 'PL90987', 180, '180 miejsc', 10)
SELECT * FROM DUAL;




-- Przykładowe dane do tabeli informacja_zwrotna
INSERT ALL
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (1, 1500, INTERVAL '30' SECOND, 1)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (2, 2000, INTERVAL '30' SECOND, 2)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (3, 1800, INTERVAL '30' SECOND, 3)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (4, 2200, INTERVAL '30' SECOND, 4)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (5, 2500, INTERVAL '30' SECOND, 5)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (6, 1700, INTERVAL '30' SECOND, 6)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (7, 1400, INTERVAL '30' SECOND, 7)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (8, 1900, INTERVAL '30' SECOND, 8)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (9, 1600, INTERVAL '30' SECOND, 9)
    INTO informacja_zwrotna (id_informacja_zwrotna, cena_koncowa, o_ile_przedluzone, wydarzenie_id_fk) VALUES (10, 2100, INTERVAL '30' SECOND, 10)
SELECT * FROM DUAL;


-- Przykładowe dane do tabeli opinia_klienta
INSERT ALL
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (1, '5/5', 'Świetna obsługa!', 1, 1)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (2, '4/5', 'Bardzo dobre usługi.', 2, 2)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (3, '3/5', 'Przeciętne doświadczenie.', 3, 3)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (4, '5/5', 'Profesjonalna obsługa!', 4, 4)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (5, '4/5', 'Dobra jakość usług.', 5, 5)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (6, '5/5', 'Polecam w 100%!', 6, 6)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (7, '3/5', 'Może być lepiej.', 7, 7)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (8, '4/5', 'Zadowalający poziom usług.', 8, 8)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (9, '5/5', 'Najlepsze doświadczenie!', 9, 9)
    INTO opinia_klienta (id_opinia_klienta, skala_opinii_klienta, tresc_opinii_klienta, informacja_zwrotna_id_fk, klienci_id_fk) VALUES (10, '4/5', 'Warto skorzystać.', 10, 10)
SELECT * FROM DUAL;



----------------------------------
