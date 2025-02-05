-- get ticket information with person information
SELECT * from scan_db.TABKassaTransAufbereit tta 
left join scan_db.Person p 
on p.nPersPersNr = tta.nPersPersNr 

