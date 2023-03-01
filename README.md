# Baza_komis
Projekt bazy danych komisu/warsztatu samochodowego. Został utworzony w MS SQL SERVER.

Struktura projektu:

Schemat bazy danych został zawarty w pliku Schemat_komis.png

1. Tabela dbo.pracownik- zawiera informacje o pracownikach.

2. Tabela dbo.klient- zawiera informacje o klientach.

3. Tabela dbo.miejsce- zawiera informacje oddziałach.

4. Tabela dbo.samochod- zawiera informacje o posiadanych do wypożyczenia samochodach, oraz czy któryś samochod nie został usunięty z wypożyczalni.

5. Tabela dbo.maprawa- zawiera informacje o usterkach jakie zostały zgłoszone do naprawy w poszczególnych samochodach.

6. Tabela dbo.wykonane_naprawy- zawiera informację o wykonanych naprawach oraz o pracownikach którzy wykonywali naprawę.

7. Tabela dbo.wypozyczenie- zawiera informację o wypożyczeniach samochodów.

8. Widok dbo.klient_raport.View- zawierający informację ile razy klient wypożyczył samochod.

9. Widok dbo.samochod_raport.View- zawierający informację o ilości wpożyczeń danej marki samochodu.

10. Funkcja dbo.aktywnosc_klienta- zliczająca ilość wypożyczeń samochodów przez klienta o podanym id.

11. Funkcja dbo.ilosc_wypozyczen_w_czasie- zliczająca ilość wypożyczeń dla klienta o danym id w podanym przedziale czasowym.

12. Funkcja dbo.roznica_pensji- wyświetlająca różnicę miedzy maksymalną,a minimalną pensją.

13. Procedura dbo.dodaj_klienta- dodająca klienta.

14. Procedura dbo.wypisz_samochod- wypisująca wyszyskie samochody danej marki.

15. Procedura dbo.zwieksz_pensje- zwiększająca pensję pracownika o podanym id i o podaną kwotę.

16. Wyzwalacz dbo.blokada_usuniecia_sam- zmienia wart. kolumny usuniety na 1 gdy samochod ma być oznaczony jako usuniety.

17. Wyzwalacz dbo.pensja_zero- uniemożliwiający dodanie pracownika z pensją lub dodatkiem równym zero.

18. Wyzwalacz dbo.usun_klienta- blokujący usuwanie klientów.






