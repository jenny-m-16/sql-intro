-- Who hit the most home runs in 2019, and what team did they play for?

SELECT name, first_name, last_name, home_runs FROM players AS playernames
INNER JOIN
(SELECT id, name, player_id, home_runs 
FROM teams 
AS teams2019 
INNER JOIN 
(SELECT player_id, home_runs, team_id FROM stats where home_runs >0) AS playerstats 
ON teams2019.id = playerstats.team_id 
WHERE year = 2019 
ORDER BY home_runs DESC 
LIMIT 1) AS homeruns2019
ON playernames.id = homeruns2019.player_id;

name, first_name, last_name, home_runs
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


