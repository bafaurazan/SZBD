# Cel projektu
**Temat: System wspomagający organizację animacji czasu wolnego**

- Firma zajmująca się animacjami czasu wolnego organizuje zabawy dla dzieci i ich opiekunów na zlecenie klientów. Realizuje zlecenia dostosowane do terminu, lokalizacji, grupy wiekowej uczestników oraz rodzaju wydarzenia (np. wesele, piknik rodzinny). Animacje są dostosowywane do wieku dzieci, z odpowiednio dobranymi materiałami, muzyką i zabawami. Pracownicy wprowadzają informacje o realizacji zleceń, zużyciu materiałów oraz generują raporty dotyczące liczby zleceń, stanu zasobów i rodzajów realizowanych zabaw. 

- System powinien przechowywać szczegółowe dane o zleceniach, takie jak: data, godzina, miejsce realizacji, wiek uczestników, rodzaj zabaw i dane kontaktowe klienta. Dodatkowo należy rejestrować stan dostępnych materiałów (ilość, zużycie, potrzeba uzupełnienia) oraz ich dopasowanie do grup wiekowych, co umożliwi sprawne przygotowanie animacji. System powinien także wspierać zarządzanie kalendarzem zleceń i harmonogramem pracowników, umożliwiając łatwe planowanie oraz monitorowanie dostępności materiałów i animacji. 

- Dodatkowo system powinien umożliwiać generowanie szablonów animacji, które będą uwzględniały szczegóły zlecenia, takie jak wiek uczestników, dostępne materiały i wybrany rodzaj zabaw. Szablony te pomogą animatorom w przygotowaniu i realizacji zadań, zapewniając spójność dostosowaną do wydarzenia i odpowiednią jakość usług.


# Zakres projektu

1. Zarządzanie danymi klientów
- Przechowywanie danych kontaktowych klientów

2. Baza zleceń i ofert
- Każde zlecenie wywodzi się z oferty i ma swoją cenę
- Każda oferta zawiera listę zabaw

3. Baza zabaw
- Lista zabaw (np. przeciąganie liny, robienie baniek mydlanych)
- Każda zabawa w bazie ma swoje potrzebne materiały

4. Baza materiałów, wydarzeń i pracowników
- Przechowujemy listę materiałów, które są wykorzystywane w zabawach
- Każdy materiał może mieć przypisane wydarzenie
- Możliwość przypisania pracownika do wydarzenia


# Wymagania funkcjonalne

1. Dane klientów
- Możliwość dodawanie, edycji i usuwania danych klientów
- Weryfikacja unikalności kontaktu (np. unikalny numer telefonu lub e-mail)

2. Zlecenia i oferty
- Tworzymy zlecenie dla wybranego klienta
- generowanie wstępnej ceny zlecenia

3. Zabawy
- Obsuga dodawania i aktualizaccji pozycji w bazie
- podzial na grupy wiekowe
- możliwość przypisania materialów do zabaw

4. Materiały, wydarzenia i dane pracowników
- Obsluga dodawania i aktualizaccji pozycji w bazie
- możliwość przypisania materialów do wydarzenia
- przechowywanie danych o dostępnych materiaach
- 

