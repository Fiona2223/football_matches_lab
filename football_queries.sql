
1) 
SELECT * FROM matches WHERE season = 2017;

2) 
SELECT * FROM matches WHERE (hometeam = 'Barcelona' OR awayteam = 'Barcelona');

3) 
SELECT * FROM divisions WHERE country LIKE '%Scotland%';

4)
SELECT code FROM divisions WHERE name = 'Bundesliga';
SELECT COUNT (*) FROM matches WHERE division_code = 'D1' AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg');

5)
SELECT DISTINCT hometeam FROM matches WHERE hometeam LIKE '%City%';

6)
SELECT code FROM divisions WHERE country = 'France';

7) 
SELECT * FROM matches WHERE (hometeam = 'Huddersfield' AND awayteam = 'Swansea');
SELECT * FROM matches WHERE (awayteam = 'Huddersfield' AND hometeam = 'Swansea'); 

8)
SELECT code FROM divisions WHERE name LIKE '%Eredivisie%';
SELECT COUNT(*) FROM Matches WHERE division_code = 'N1' AND ftr = 'D' AND season >= 2010 AND season <= 2015;

9) 
SELECT code FROM divisions WHERE name = 'Premier League';
SELECT * FROM matches WHERE division_code = 'E0' ORDER BY (fthg + ftag) DESC, fthg DESC;

10) 
SELECT division_code, season, SUM (fthg + ftag) FROM matches GROUP BY division_code, season ORDER BY sum DESC LIMIT 1;
SELECT name FROM divisions WHERE code = "EC';