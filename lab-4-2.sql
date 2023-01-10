-- What are the first and last names of the players who 
-- played for the 2020 Chicago Cubs?

-- Hint: combine WHERE clauses using AND, e.g.
-- WHERE column1 = expression1
-- AND column2 = expression2

SELECT id FROM teams WHERE name LIKE '%Chicago Cubs%' AND year = 2020;

SELECT first_name, last_name FROM players INNER JOIN (SELECT player_id FROM stats WHERE team_id == 2931) AS Cubs2020 ON players.id = Cubs2020.player_id;

-- Expected result: 47 rows starting with
--
-- +------------+-----------+
-- | Jason      | Adam      |
-- | Albert     | Almora    |
-- | Adbert     | Alzolay   |
-- | Javier     | Baez      |
-- | David      | Bote      |
-- | Rex        | Brothers  |
-- | Kris       | Bryant    |
-- | Victor     | Caratini  |
-- | Andrew     | Chafin    |
-- | Tyler      | Chatwood  |
-- | Willson    | Contreras |
-- | Yu         | Darvish   |
-- | Matt       | Dermody   |
-- | Billy      | Hamilton  |
-- | Ian        | Happ      |


