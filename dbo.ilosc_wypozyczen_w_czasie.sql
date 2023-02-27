USE komis
GO
/****** Object:  UserDefinedFunction dbo.ilosc_wypozyczen_w_czasie    ******/

create function dbo.ilosc_wypozyczen_w_czasie (@data_od date,@data_do date)

returns table 
as
return

(select count (id_wypozyczenia) as ilosc from wypozyczenie where data_wyp>@data_od and data_odd<@data_do);
GO
