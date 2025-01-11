 /*
    This script contains a series of SQL queries designed for testing and validating Lolipop Database functionalities.

    It showcases fundamental and advanced operations, including projection, selection, joins, set operations, aggregation, and subqueries.

    Designed for use with Oracle SQL-compliant database systems.
*/

-- 1. Projection
-- Select the first name and last name of all clients
SELECT imie_klienta,
       nazwisko_klienta
FROM   klienci;

-- 2. Selection
-- Select clients whose last name starts with the letter "K"
SELECT *
FROM   klienci
WHERE  nazwisko_klienta LIKE 'K%';

-- 3. Join (INNER JOIN)
-- Join the tables 'klienci' and 'adresy_klientow' to get client addresses
SELECT k.id_klienci,
       k.imie_klienta,
       k.nazwisko_klienta,
       a.ulica,
       a.numer_budynku,
       a.numer_mieszkania
FROM   klienci k
JOIN   adresy_klientow ak
ON     k.id_klienci = ak.klienci_id_fk
JOIN   adresy a
ON     ak.adresy_id_fk = a.id_adresy;

-- 4. Set Difference (MINUS)
-- Find clients who do not have an assigned address
SELECT id_klienci,
       imie_klienta,
       nazwisko_klienta
FROM   klienci
minus
SELECT k.id_klienci,
       k.imie_klienta,
       k.nazwisko_klienta
FROM   klienci k
JOIN   adresy_klientow ak
ON     k.id_klienci = ak.klienci_id_fk;

-- The result of this query has no records because all clients have assigned addresses
-- Proof query displaying client data and their assigned addresses
SELECT     k.id_klienci,
           k.imie_klienta,
           k.nazwisko_klienta,
           a.ulica,
           a.numer_budynku,
           a.numer_mieszkania
FROM       klienci k
INNER JOIN adresy_klientow ak
ON         k.id_klienci = ak.klienci_id_fk
INNER JOIN adresy a
ON         ak.adresy_id_fk = a.id_adresy;

-- 5. Set Union (UNION)
-- Combine the list of client and employee names
SELECT imie_klienta     AS imie,
       nazwisko_klienta AS nazwisko
FROM   klienci
UNION
SELECT imie_pracownika     AS imie,
       nazwisko_pracownika AS nazwisko
FROM   pracownicy;

-- 6. Cartesian Product
-- Generate all possible pairs of clients and addresses
SELECT k.imie_klienta,
       k.nazwisko_klienta,
       a.ulica,
       a.numer_budynku
FROM   klienci k,
       adresy a;

-- 7. Grouping and Aggregation
-- Count the number of clients in each city
SELECT   m.nazwa_miejscowosci,
         Count(DISTINCT ak.klienci_id_fk) AS liczba_klientow
FROM     adresy_klientow ak
JOIN     miejscowosci m
ON       ak.miejscowosci_id_fk = m.id_miejscowosci
GROUP BY m.nazwa_miejscowosci;

-- 8. Projection with Arithmetic Expressions
-- Calculate full client addresses as a single column
SELECT k.imie_klienta
              || ' '
              || k.nazwisko_klienta AS klient,
       a.ulica
              || ' '
              || a.numer_budynku
              || Nvl2(a.numer_mieszkania, '/'
              || a.numer_mieszkania, '') AS pelny_adres
FROM   klienci k
JOIN   adresy_klientow ak
ON     k.id_klienci = ak.klienci_id_fk
JOIN   adresy a
ON     ak.adresy_id_fk = a.id_adresy;

-- 9. Retrieve Records with the Highest Values (TOP-N QUERY)
-- Find clients associated with the highest number of different locations
SELECT   k.id_klienci,
         k.imie_klienta,
         k.nazwisko_klienta,
         Count(*) AS liczba_lokalizacji
FROM     klienci k
JOIN     adresy_klientow ak
ON       k.id_klienci = ak.klienci_id_fk
GROUP BY k.id_klienci,
         k.imie_klienta,
         k.nazwisko_klienta
ORDER BY liczba_lokalizacji DESC
FETCH first 5 rows only;

-- 10. Retrieve Data with Aliasing and Temporary Views
-- Create a list of clients with their cities using aliases
SELECT k.imie_klienta,
       k.nazwisko_klienta,
       m.nazwa_miejscowosci
FROM   klienci k
JOIN   adresy_klientow ak
ON     k.id_klienci = ak.klienci_id_fk
JOIN   miejscowosci m
ON     ak.miejscowosci_id_fk = m.id_miejscowosci;

-- 11. Retrieve specific columns from the 'adresy' table
SELECT ulica,
       numer_budynku
FROM   adresy
WHERE  numer_budynku > 10;

-- 12. Validate aggregation queries
-- Count the number of addresses
SELECT Count(*) AS total_addresses
FROM   adresy;

-- 13. Retrieve the maximum building number
SELECT Max(numer_budynku) AS max_building_number
FROM   adresy;

-- 14. Validate relational algebra operations
-- Join 'adresy' with 'adresy_klientow' to retrieve client addresses
SELECT ak.klienci_id_fk,
       a.ulica,
       a.numer_budynku
FROM   adresy a
JOIN   adresy_klientow ak
ON     a.id_adresy = ak.adresy_id_fk;

-- 15. Use a subquery to retrieve addresses used by specific clients
SELECT ulica,
       numer_budynku
FROM   adresy
WHERE  id_adresy IN
       (
              SELECT adresy_id_fk
              FROM   adresy_klientow
              WHERE  klienci_id_fk = 1); 