USE komis
GO
/****** Object:  UserDefinedFunction dbo.roznica_pensji  ******/

create function dbo.roznica_pensji ()
returns table
as
return
(
select MAX (pensja)- MIN (pensja) as roznica from pracownik
)
GO
