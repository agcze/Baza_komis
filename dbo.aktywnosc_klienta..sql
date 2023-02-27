USE komis
GO
/***** Object:  UserDefinedFunction dbo.aktywnosc_klienta    *****/

create   function dbo.aktywnosc_klienta ( @id int)
RETURNS TABLE
AS
RETURN
(
SELECT count (id_wypozyczenia) as ilosc_wypozyczen from wypozyczenie where id_klient=@id
)
GO
