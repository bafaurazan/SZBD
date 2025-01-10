-- Validate the SELECT queries
-- Fetch all rows from the 'adresy' table
SELECT * FROM adresy;

-- Fetch specific columns from the 'adresy' table
SELECT ulica, numer_budynku FROM adresy WHERE numer_budynku > 10;

-- Validate the Aggregation queries
-- Count the number of addresses
SELECT COUNT(*) AS total_addresses FROM adresy;

-- Fetch the maximum building number
SELECT MAX(numer_budynku) AS max_building_number FROM adresy;

-- Validate relational algebra operations
-- Join 'adresy' with 'adresy_klientow' to fetch clients' addresses
SELECT ak.klienci_id_fk, a.ulica, a.numer_budynku
FROM adresy a
JOIN adresy_klientow ak ON a.id_adresy = ak.adresy_id_fk;

-- Use a subquery to fetch addresses used by specific clients
SELECT ulica, numer_budynku
FROM adresy
WHERE id_adresy IN (SELECT adresy_id_fk FROM adresy_klientow WHERE klienci_id_fk = 1);



-- 1. Projekcja
-- Wybranie imienia i nazwiska wszystkich klientów
SELECT imie_klienta, nazwisko_klienta
FROM klienci;

-- 2. Selekcja
-- Wybranie klientów, których nazwisko zaczyna się na literę "K"
SELECT *
FROM klienci
WHERE nazwisko_klienta LIKE 'K%';

-- 3. Złączenie (INNER JOIN)
-- Połączenie tabel klienci i adresy_klientow w celu uzyskania adresów klientów
SELECT k.id_klienci, k.imie_klienta, k.nazwisko_klienta, a.ulica, a.numer_budynku, a.numer_mieszkania
FROM klienci k
JOIN adresy_klientow ak ON k.id_klienci = ak.klienci_id_fk
JOIN adresy a ON ak.adresy_id_fk = a.id_adresy;

-- 4. Różnica zbiorów (MINUS)
-- Znajdź klientów, którzy nie mają przypisanego adresu
SELECT id_klienci, imie_klienta, nazwisko_klienta
FROM klienci
MINUS
SELECT k.id_klienci, k.imie_klienta, k.nazwisko_klienta
FROM klienci k
JOIN adresy_klientow ak ON k.id_klienci = ak.klienci_id_fk;

-- 5. Suma zbiorów (UNION)
-- Połącz listę imion i nazwisk klientów oraz pracowników
SELECT imie_klienta AS imie, nazwisko_klienta AS nazwisko
FROM klienci
UNION
SELECT imie_pracownika AS imie, nazwisko_pracownika AS nazwisko
FROM pracownicy;

-- 6. Iloczyn kartezjański
-- Generowanie wszystkich możliwych par klientów i adresów
SELECT k.imie_klienta, k.nazwisko_klienta, a.ulica, a.numer_budynku
FROM klienci k, adresy a;

-- 7. Grupowanie i agregacja
-- Policz liczbę klientów w każdej miejscowości
SELECT m.nazwa_miejscowosci, COUNT(DISTINCT ak.klienci_id_fk) AS liczba_klientow
FROM adresy_klientow ak
JOIN miejscowosci m ON ak.miejscowosci_id_fk = m.id_miejscowosci
GROUP BY m.nazwa_miejscowosci;

-- 8. Rzutowanie na wyrażenia arytmetyczne (projekcja z obliczeniami)
-- Wyliczenie pełnych adresów klientów jako pojedyncze kolumny
SELECT k.imie_klienta || ' ' || k.nazwisko_klienta AS klient,
       a.ulica || ' ' || a.numer_budynku || NVL2(a.numer_mieszkania, '/' || a.numer_mieszkania, '') AS pelny_adres
FROM klienci k
JOIN adresy_klientow ak ON k.id_klienci = ak.klienci_id_fk
JOIN adresy a ON ak.adresy_id_fk = a.id_adresy;

-- 9. Wybranie rekordów z największymi wartościami (TOP-N QUERY)
-- Znajdź klientów przypisanych do największej liczby różnych lokalizacji
SELECT k.id_klienci, k.imie_klienta, k.nazwisko_klienta, COUNT(*) AS liczba_lokalizacji
FROM klienci k
JOIN adresy_klientow ak ON k.id_klienci = ak.klienci_id_fk
GROUP BY k.id_klienci, k.imie_klienta, k.nazwisko_klienta
ORDER BY liczba_lokalizacji DESC
FETCH FIRST 5 ROWS ONLY;

-- 10. Wyszukanie danych z aliasowaniem i widokami tymczasowymi
-- Stworzenie listy klientów z ich miejscowościami przy użyciu aliasów
SELECT k.imie_klienta, k.nazwisko_klienta, m.nazwa_miejscowosci
FROM klienci k
JOIN adresy_klientow ak ON k.id_klienci = ak.klienci_id_fk
JOIN miejscowosci m ON ak.miejscowosci_id_fk = m.id_miejscowosci;
