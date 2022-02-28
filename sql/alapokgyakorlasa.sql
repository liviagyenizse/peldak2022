use demowebshop;

select v.Nev as VevoNeve, t.Nev as TermekNeve,
	mt.db, t.Ar, mt.db*t.Ar as Fizetendo
from Vevo v
join Megrendeles m
	on v.Id = m.VevoId
join MegrendelesTetel mt
	on mt.MegrendelesId = m.Id
join Termek t
	on mt.TermekId = t.Id
where mt.db > 1
order by v.Nev desc;
