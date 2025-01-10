/*
    SQL script for creating the database structure of a system for managing data related to Lolipop Database
    This file contains table definitions, primary keys, foreign keys, and constraints to ensure data integrity.
    Designed for use with Oracle SQL-compliant database systems.
*/

SET DEFINE OFF


CREATE TABLE adresy (
    id_adresy        INTEGER NOT NULL,
    ulica            VARCHAR2(45 CHAR) NOT NULL,
    numer_budynku    INTEGER NOT NULL CHECK (numer_budynku > 0),
    numer_mieszkania INTEGER CHECK (numer_mieszkania > 0)
);

ALTER TABLE adresy ADD CONSTRAINT adresy_pk PRIMARY KEY ( id_adresy );

CREATE TABLE adresy_klientow (
    klienci_id_fk      INTEGER NOT NULL,
    adresy_id_fk       INTEGER NOT NULL,
    miejscowosci_id_fk INTEGER NOT NULL
);

CREATE TABLE adresy_lokalizacji (
    lokalizacja_id_fk  INTEGER NOT NULL,
    adresy_id_fk       INTEGER NOT NULL,
    miejscowosci_id_fk INTEGER NOT NULL
);

CREATE TABLE adresy_pracownikow (
    adresy_id_fk       INTEGER NOT NULL,
    pracownicy_id_fk   INTEGER NOT NULL,
    miejscowosci_id_fk INTEGER NOT NULL
);

CREATE TABLE czas_zamowienia (
    id_czas_zamowienia         INTEGER NOT NULL,
    data_dostawy_zamowienia    DATE NOT NULL,
    godzina_dostawy_zamowienia INTERVAL DAY (0) TO SECOND(0) NOT NULL,
    data_zakupu_zamowienia     DATE NOT NULL,
    godzina_zakupu_zamowienia  INTERVAL DAY (0) TO SECOND(0) NOT NULL,
    zamowienia_id_fk           INTEGER NOT NULL,
    CONSTRAINT chk_data_czas CHECK (
        data_dostawy_zamowienia > data_zakupu_zamowienia OR
        (data_dostawy_zamowienia = data_zakupu_zamowienia AND godzina_dostawy_zamowienia >= godzina_zakupu_zamowienia)
    )
);

ALTER TABLE czas_zamowienia ADD CONSTRAINT czas_zamowienia_pk PRIMARY KEY ( id_czas_zamowienia );

CREATE TABLE gatunek_muzyczny (
    id_gatunek_muzyczny      INTEGER NOT NULL,
    nazwa_gatunku_muzycznego VARCHAR2(30 CHAR) NOT NULL UNIQUE,
    grupy_wiekowe_id_fk      INTEGER NOT NULL
);

ALTER TABLE gatunek_muzyczny ADD CONSTRAINT gatunek_muzyczny_pk PRIMARY KEY ( id_gatunek_muzyczny );

CREATE TABLE grupy_materialow (
    id_grupy_materialow    INTEGER NOT NULL,
    nazwa_grupy_materialow VARCHAR2(50 CHAR) NOT NULL UNIQUE,
    zamowienia_id_fk       INTEGER NOT NULL
);

ALTER TABLE grupy_materialow ADD CONSTRAINT grupy_materialow_pk PRIMARY KEY ( id_grupy_materialow );

CREATE TABLE grupy_wiekowe (
    id_grupy_wiekowe               INTEGER NOT NULL,
    minimalny_wiek_grupy_wiekowej  INTEGER NOT NULL CHECK (minimalny_wiek_grupy_wiekowej > 0),
    maksymalny_wiek_grupy_wiekowej INTEGER NOT NULL CHECK (maksymalny_wiek_grupy_wiekowej > 0 AND maksymalny_wiek_grupy_wiekowej <= 99),
    zabawy_id_fk                   INTEGER NOT NULL
);

ALTER TABLE grupy_wiekowe ADD CONSTRAINT grupy_wiekowe_pk PRIMARY KEY ( id_grupy_wiekowe );

CREATE TABLE informacja_zwrotna (
    id_informacja_zwrotna INTEGER NOT NULL,
    cena_koncowa          FLOAT(2) CHECK (cena_koncowa >= 0),
    o_ile_przedluzone     INTERVAL DAY (0) TO SECOND(0),
    wydarzenie_id_fk      INTEGER NOT NULL
);

ALTER TABLE informacja_zwrotna ADD CONSTRAINT informacja_zwrotna_pk PRIMARY KEY ( id_informacja_zwrotna );

CREATE TABLE klienci (
    id_klienci       INTEGER NOT NULL,
    imie_klienta     VARCHAR2(35 CHAR) NOT NULL CHECK (LENGTH(imie_klienta) >= 2),
    nazwisko_klienta VARCHAR2(30 CHAR) NOT NULL CHECK (LENGTH(nazwisko_klienta) >= 2)
);

ALTER TABLE klienci ADD CONSTRAINT klienci_pk PRIMARY KEY ( id_klienci );

CREATE TABLE kontakt_do_klienta (
    id_kontakt_do_klienta  INTEGER NOT NULL,
    adres_email_klienta    VARCHAR2(50 CHAR) NOT NULL CHECK (REGEXP_LIKE(adres_email_klienta, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')),
    numer_telefonu_klienta VARCHAR2(12 CHAR) NOT NULL CHECK (REGEXP_LIKE(numer_telefonu_klienta, '^[0-9]{9,12}$')),
    klienci_id_fk          INTEGER NOT NULL
);

ALTER TABLE kontakt_do_klienta ADD CONSTRAINT kontakt_do_klienta_pk PRIMARY KEY ( id_kontakt_do_klienta );

CREATE TABLE kontakt_do_pracownika (
    id_kontakt_do_pracownika INTEGER NOT NULL,
    adres_email_pracownika   VARCHAR2(50 CHAR) NOT NULL CHECK (REGEXP_LIKE(adres_email_pracownika, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')),
    numer_telefonu_pracownika VARCHAR2(12 CHAR) NOT NULL CHECK (REGEXP_LIKE(numer_telefonu_pracownika, '^[0-9]{9,12}$')),
    pracownicy_id_fk         INTEGER NOT NULL
);

ALTER TABLE kontakt_do_pracownika ADD CONSTRAINT kontakt_do_pracownika_pk PRIMARY KEY ( id_kontakt_do_pracownika );

CREATE TABLE lokalizacja (
    id_lokalizacja           INTEGER NOT NULL,
    uwagi_do_lokalizacji     VARCHAR2(50 CHAR),
    wydarzenie_id_wydarzenie INTEGER NOT NULL
);

ALTER TABLE lokalizacja ADD CONSTRAINT lokalizacja_pk PRIMARY KEY ( id_lokalizacja );

CREATE TABLE materialy (
    id_materialu              INTEGER NOT NULL,
    nazwa_materialu           VARCHAR2(25 CHAR) NOT NULL,
    dostepna_ilosc_materialow INTEGER NOT NULL CHECK (dostepna_ilosc_materialow >= 0),
    wymagana_ilosc_materialow INTEGER NOT NULL CHECK (wymagana_ilosc_materialow >= 0),
    grupy_materialow_id_fk    INTEGER NOT NULL
);

ALTER TABLE materialy ADD CONSTRAINT materialy_pk PRIMARY KEY ( id_materialu );

CREATE TABLE miejscowosci (
    id_miejscowosci    INTEGER NOT NULL,
    nazwa_miejscowosci VARCHAR2(25 CHAR) NOT NULL,
    kod_pocztowy       VARCHAR2(10 CHAR) NOT NULL CHECK (REGEXP_LIKE(kod_pocztowy, '^\d{2}-\d{3}$'))
);

ALTER TABLE miejscowosci ADD CONSTRAINT miejscowosci_pk PRIMARY KEY ( id_miejscowosci );

CREATE TABLE oferty (
    id_oferty           INTEGER NOT NULL,
    typ_pakietu_oferty  VARCHAR2(20 CHAR) NOT NULL,
    cena_pakietu        FLOAT(2) NOT NULL CHECK (cena_pakietu > 0),
    czas_trwania_oferty INTERVAL DAY (0) TO SECOND(0) CHECK (czas_trwania_oferty >= INTERVAL '0' SECOND),
    opis_oferty         VARCHAR2(100 CHAR)
);

ALTER TABLE oferty ADD CONSTRAINT oferty_pk PRIMARY KEY ( id_oferty );

CREATE TABLE opinia_klienta (
    id_opinia_klienta        INTEGER NOT NULL,
    skala_opinii_klienta     VARCHAR2(5 CHAR) CHECK (REGEXP_LIKE(skala_opinii_klienta, '^\d+/\d+$')),
    tresc_opinii_klienta     VARCHAR2(100 CHAR),
    informacja_zwrotna_id_fk INTEGER NOT NULL,
    klienci_id_fk            INTEGER NOT NULL
);

ALTER TABLE opinia_klienta ADD CONSTRAINT opinia_klienta_pk PRIMARY KEY ( id_opinia_klienta );

CREATE TABLE pracownicy (
    id_pracownicy       INTEGER NOT NULL,
    imie_pracownika     VARCHAR2(35 CHAR) NOT NULL CHECK (LENGTH(imie_pracownika) >= 2),
    nazwisko_pracownika VARCHAR2(30 CHAR) NOT NULL CHECK (LENGTH(nazwisko_pracownika) >= 2)
);

ALTER TABLE pracownicy ADD CONSTRAINT pracownicy_pk PRIMARY KEY ( id_pracownicy );

CREATE TABLE pracownik_na_zlecenie (
    zlecenia_id_fk   INTEGER NOT NULL,
    pracownicy_id_fk INTEGER NOT NULL
);

CREATE TABLE transport (
    id_transport                  INTEGER NOT NULL,
    rodzaj_transportu             VARCHAR2(30 CHAR) NOT NULL,
    tablica_rejestracyjna         VARCHAR2(10 CHAR) NOT NULL CHECK (REGEXP_LIKE(tablica_rejestracyjna, '^[A-Z0-9]{1,10}$')),
    ilosc_pasazerow_w_transporcie INTEGER CHECK (ilosc_pasazerow_w_transporcie > 0),
    pojemnosc_transportowa        VARCHAR2(20 CHAR) NOT NULL,
    wydarzenie_id_fk              INTEGER NOT NULL
);

ALTER TABLE transport ADD CONSTRAINT transport_pk PRIMARY KEY ( id_transport );

CREATE TABLE utwor (
    id_utwor               INTEGER NOT NULL,
    nazwa_utworu           VARCHAR2(30 CHAR) NOT NULL,
    wykonawca_utworu       VARCHAR2(35 CHAR),
    licencja_utworu        VARCHAR2(25 CHAR),
    gatunek_muzyczny_id_fk INTEGER NOT NULL
);

ALTER TABLE utwor ADD CONSTRAINT utwor_pk PRIMARY KEY ( id_utwor );
ALTER TABLE utwor ADD CONSTRAINT utwor_unique UNIQUE (nazwa_utworu, wykonawca_utworu);

CREATE TABLE uzyte_materialy (
    oferty_id_fk    INTEGER NOT NULL,
    materialy_id_fk INTEGER NOT NULL
);

CREATE TABLE wydarzenie (
    id_wydarzenie    INTEGER NOT NULL,
    nazwa_wydarzenia VARCHAR2(50 CHAR) NOT NULL,
    typ_wydarzenia   VARCHAR2(25 CHAR),
    data_wydarzenia  DATE NOT NULL,
    zlecenia_id_fk   INTEGER NOT NULL
);

ALTER TABLE wydarzenie ADD CONSTRAINT wydarzenie_pk PRIMARY KEY ( id_wydarzenie );

CREATE TABLE zabawy (
    id_zabawy                   INTEGER NOT NULL,
    nazwa_zabawy                VARCHAR2(20 CHAR) NOT NULL,
    opis_zabawy                 VARCHAR2(50 CHAR),
    ilosc_animatorow_do_zabawy  INTEGER NOT NULL CHECK (ilosc_animatorow_do_zabawy > 0),
    ilosc_uczestnikow_do_zabawy INTEGER NOT NULL CHECK (ilosc_uczestnikow_do_zabawy > 0),
    materialy_id_fk             INTEGER NOT NULL
);

ALTER TABLE zabawy ADD CONSTRAINT zabawy_pk PRIMARY KEY ( id_zabawy );

CREATE TABLE zamowienia (
    id_zamowienia               INTEGER NOT NULL,
    osoba_do_odbioru_zamowienia VARCHAR2(65 CHAR) NOT NULL,
    sposob_dostawy_zamowienia   VARCHAR2(20 CHAR) NOT NULL CHECK (sposob_dostawy_zamowienia IN ('Kurier', 'Odbiór osobisty', 'Paczkomat')),
    osoba_zamawiajaca           VARCHAR2(65 CHAR) NOT NULL
);

ALTER TABLE zamowienia ADD CONSTRAINT zamowienia_pk PRIMARY KEY ( id_zamowienia );

CREATE TABLE zlecenia (
    id_zlecenia               INTEGER NOT NULL,
    wstepna_cena_zlecenia     FLOAT(3) NOT NULL CHECK (wstepna_cena_zlecenia > 0),
    data_wystawienia_zlecenia DATE NOT NULL,
    status_zlecenia           VARCHAR2(15 CHAR) NOT NULL CHECK (status_zlecenia IN ('Nowe', 'W trakcie', 'Zakończone', 'Anulowane')),
    klienci_id_fk             INTEGER NOT NULL,
    oferty_id_fk              INTEGER NOT NULL
);

ALTER TABLE zlecenia ADD CONSTRAINT zlecenia_pk PRIMARY KEY ( id_zlecenia );

ALTER TABLE adresy_klientow
    ADD CONSTRAINT adr_kl_msc_fk FOREIGN KEY ( miejscowosci_id_fk )
        REFERENCES miejscowosci ( id_miejscowosci );

ALTER TABLE adresy_lokalizacji
    ADD CONSTRAINT adr_lok_adr_fk FOREIGN KEY ( adresy_id_fk )
        REFERENCES adresy ( id_adresy );

ALTER TABLE adresy_lokalizacji
    ADD CONSTRAINT adr_lok_lok_fk FOREIGN KEY ( lokalizacja_id_fk )
        REFERENCES lokalizacja ( id_lokalizacja );

ALTER TABLE adresy_lokalizacji
    ADD CONSTRAINT adr_lok_msc_fk FOREIGN KEY ( miejscowosci_id_fk )
        REFERENCES miejscowosci ( id_miejscowosci );

ALTER TABLE adresy_pracownikow
    ADD CONSTRAINT adr_prc_adr_fk FOREIGN KEY ( adresy_id_fk )
        REFERENCES adresy ( id_adresy );

ALTER TABLE adresy_pracownikow
    ADD CONSTRAINT adr_prc_msc_fk FOREIGN KEY ( miejscowosci_id_fk )
        REFERENCES miejscowosci ( id_miejscowosci );

ALTER TABLE adresy_pracownikow
    ADD CONSTRAINT adr_prc_prc_fk FOREIGN KEY ( pracownicy_id_fk )
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE adresy_klientow
    ADD CONSTRAINT adresy_klienta_adresy_fk FOREIGN KEY ( adresy_id_fk )
        REFERENCES adresy ( id_adresy );

ALTER TABLE adresy_klientow
    ADD CONSTRAINT adresy_klienta_klienci_fk FOREIGN KEY ( klienci_id_fk )
        REFERENCES klienci ( id_klienci );

ALTER TABLE czas_zamowienia
    ADD CONSTRAINT czas_zam_zam_fk FOREIGN KEY ( zamowienia_id_fk )
        REFERENCES zamowienia ( id_zamowienia );

ALTER TABLE gatunek_muzyczny
    ADD CONSTRAINT gat_muz_grp_fk FOREIGN KEY ( grupy_wiekowe_id_fk )
        REFERENCES grupy_wiekowe ( id_grupy_wiekowe );

ALTER TABLE grupy_materialow
    ADD CONSTRAINT grp_mat_zam_fk FOREIGN KEY ( zamowienia_id_fk )
        REFERENCES zamowienia ( id_zamowienia );

ALTER TABLE grupy_wiekowe
    ADD CONSTRAINT grp_wie_zab_fk FOREIGN KEY ( zabawy_id_fk )
        REFERENCES zabawy ( id_zabawy );

ALTER TABLE informacja_zwrotna
    ADD CONSTRAINT inf_zw_wyd_fk FOREIGN KEY ( wydarzenie_id_fk )
        REFERENCES wydarzenie ( id_wydarzenie );

ALTER TABLE kontakt_do_klienta
    ADD CONSTRAINT kon_kl_fk FOREIGN KEY ( klienci_id_fk )
        REFERENCES klienci ( id_klienci );

ALTER TABLE kontakt_do_pracownika
    ADD CONSTRAINT kon_prc_fk FOREIGN KEY ( pracownicy_id_fk )
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE lokalizacja
    ADD CONSTRAINT lok_wyd_fk FOREIGN KEY ( wydarzenie_id_wydarzenie )
        REFERENCES wydarzenie ( id_wydarzenie );

ALTER TABLE materialy
    ADD CONSTRAINT mat_grp_fk FOREIGN KEY ( grupy_materialow_id_fk )
        REFERENCES grupy_materialow ( id_grupy_materialow );

ALTER TABLE opinia_klienta
    ADD CONSTRAINT op_kl_inf_fk FOREIGN KEY ( informacja_zwrotna_id_fk )
        REFERENCES informacja_zwrotna ( id_informacja_zwrotna );

ALTER TABLE opinia_klienta
    ADD CONSTRAINT op_kl_kl_fk FOREIGN KEY ( klienci_id_fk )
        REFERENCES klienci ( id_klienci );

ALTER TABLE pracownik_na_zlecenie
    ADD CONSTRAINT prc_zlec_fk FOREIGN KEY ( pracownicy_id_fk )
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE transport
    ADD CONSTRAINT trans_wyd_fk FOREIGN KEY ( wydarzenie_id_fk )
        REFERENCES wydarzenie ( id_wydarzenie );

ALTER TABLE utwor
    ADD CONSTRAINT utw_gat_fk FOREIGN KEY ( gatunek_muzyczny_id_fk )
        REFERENCES gatunek_muzyczny ( id_gatunek_muzyczny );

ALTER TABLE uzyte_materialy
    ADD CONSTRAINT uzyt_mat_fk FOREIGN KEY ( materialy_id_fk )
        REFERENCES materialy ( id_materialu );

ALTER TABLE uzyte_materialy
    ADD CONSTRAINT uzyt_oft_fk FOREIGN KEY ( oferty_id_fk )
        REFERENCES oferty ( id_oferty );

ALTER TABLE wydarzenie
    ADD CONSTRAINT wyd_zlec_fk FOREIGN KEY ( zlecenia_id_fk )
        REFERENCES zlecenia ( id_zlecenia );

ALTER TABLE zabawy
    ADD CONSTRAINT zab_mat_fk FOREIGN KEY ( materialy_id_fk )
        REFERENCES materialy ( id_materialu );

ALTER TABLE zlecenia
    ADD CONSTRAINT zlec_kl_fk FOREIGN KEY ( klienci_id_fk )
        REFERENCES klienci ( id_klienci );

ALTER TABLE zlecenia
    ADD CONSTRAINT zlec_oft_fk FOREIGN KEY ( oferty_id_fk )
        REFERENCES oferty ( id_oferty );

ALTER TABLE pracownik_na_zlecenie
    ADD CONSTRAINT zlec_prc_fk FOREIGN KEY ( zlecenia_id_fk )
        REFERENCES zlecenia ( id_zlecenia );

