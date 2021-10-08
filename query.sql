SELECT * FROM Pilotos;
SELECT * FROM Pilotos WHERE nome = 'Darth Vader';
SELECT * FROM Pilotos WHERE nome = ltrim(' Darth Vader');
SELECT * FROM Pilotos WHERE nome = rtrim('Darth Vader ');
SELECT * FROM Pilotos WHERE nome LIKE '%arth Vade%';
SELECT * FROM Pilotos WHERE nome LIKE 'Darth%';
SELECT * FROM Planetas;
SELECT * FROM Naves;
SELECT * FROM PilotosNaves; 
SELECT * FROM HistoricoViagens;

SELECT  t1.*, 
		t2.Nome, 
		t3.Nome
FROM HistoricoViagens t1
INNER JOIN Pilotos t2
ON t1.IdPiloto = t2.IdPiloto
INNER JOIN Naves t3
ON t1.IdNave = t3.IdNave
use EstrelaDaMorte;