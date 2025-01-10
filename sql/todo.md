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




    CONSTRAINT nazwa_utworu_not_empty CHECK (TRIM(nazwa_utworu) IS NOT NULL),
    CONSTRAINT wykonawca_utworu_not_empty CHECK (TRIM(wykonawca_utworu) IS NOT NULL)
