-- How many lifetime hits does Barry Bonds have?

SELECT sum(hits) FROM stats WHERE player_id = 1678;

SELECT sum(hits) 
FROM stats
 INNER JOIN
  (SELECT id 
  FROM players 
  WHERE first_name = "Barry" 
  AND last_name = "Bonds") AS players1 
  ON stats.player_id = players1.id;

SELECT SUM(stats.hits)
FROM stats
INNER JOIN players
ON stats.player_id = players.id
WHERE players.first_name = "Barry"
AND players.last_name = "Bonds";
-- Expected result:
-- 2935


