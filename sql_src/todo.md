# SQL - To-Do list


zmiana DATE (TIME) na INTERVAL DAY (0) TO SECOND(0) w tabelach:
- oferty 
  - czas_trwania_oferty
- czas_zamowienia 
  - godzina_dostawy_zamowienia 
  - godzina_zakupu_zamowienia
- informacja zwrotna:
  - o_ile_przedluzone



Zabezpieczenia/ograniczenia tabel (Tworzenie tabel w SQL chatgpt chat + zmiany samodzielne w kodzie - porównać z wygenerowanym przez oracle i tym finalnym co się zmieniło)



# To-Do:
- zmienić układ daty w całej bazie
- ogólne statystyki co do wszystkich tabel (ile jest tabel w ogóle itd)
- jak będzie czas to zmienić bullshit data na actual data od animatorów (z pdfa)
- SCREENSHOTY Z URUCHAMIANYCH KWEREND DO TESTOWANIA I ALGEBRY



# PROJEKT IMPLEMENTACYJNY (PDF) TO-DO:
- [ ] Sprawozdanie z procesu realizacji zaprojektowanej bazy danych w wybranym środowisku
- [X] Skrypty SQL:
  - [X] Stworzenie tabel (wraz z ograniczeniami)
  - [X] Wprowadzenie danych do tabeli (INSERT)
  - [X] Tworzenie kwerend:
    - [X] Wybierające
    - [X] Agregujące
    - [X] Implementujące kwerenedy z części logicznej (w notacji algebry relacyjnej)
- [X] Dołączyć wszystkie skrypty utworzonej bazy danych i kwerend


# PROJEKT LOGICZNY (PDF) TO-DO:
- [X] Propozycja operacji na danych - przygotowanie propozycji min. 10 kwerend do zaproponowanej bazy danych w oparciu o notację operacji algebry relacyjnej
- [X] Opis procesu normalizacji





DO RELATION ALGEBRA 7
-- Wynik tej kwerendy nie posiada żadnych rekordów, ponieważ wszystkie materiały wprowadzone do bazy danych spełniają kryteria wymaganej ilości
-- Kwerenda udowadniająca, której wynikiem są dane materiałów, ich ilość dostępna oraz wymagana oraz grupa do której materiały należą


DO DB_TESTS 4
-- Wynik tej kwerendy nie posiada żadnych rekordów, ponieważ wszyscy klienci mają przypisajne adresy
-- Kwerenda udowadniająca, której wynikiem są dane klientów oraz przypisane do nich adresy