CREATE VIEW team_games_count AS
SELECT team_id, COUNT(*) AS games_count
FROM competition_results
WHERE competition_id IN (1, 2)
GROUP BY team_id;
SELECT teams.name, team_games_count.games_count
FROM teams
JOIN team_games_count ON teams.id = team_games_count.team_id
ORDER BY team_games_count.games_count DESC
LIMIT 1;


CREATE VIEW european_championships AS
SELECT *
FROM competitions
WHERE rank = 'Europe Championship';
CREATE VIEW european_championships_countries AS
SELECT DISTINCT country
FROM european_championships
WHERE sport = 'Football' AND year < 2020;
SELECT * FROM european_championships_countries;


CREATE VIEW rank_competitions AS
SELECT *
FROM competitions
WHERE rank = 'World Championship' AND sport = 'Hockey';
CREATE VIEW rank_competition_teams AS
SELECT DISTINCT team_id, teams.name, teams.country
FROM competition_results
JOIN teams ON competition_results.team_id = teams.id
WHERE competition_id IN (SELECT id FROM rank_competitions);
SELECT * FROM rank_competition_teams;


CREATE VIEW year_competitions AS
SELECT *
FROM competitions
WHERE year = 2016;
CREATE VIEW year_competition_teams AS
SELECT DISTINCT team_id, teams.name, teams.country
FROM competition_results
JOIN teams ON competition_results.team_id = teams.id
WHERE competition_id IN (SELECT id FROM year_competitions);
SELECT * FROM year_competition_teams;


CREATE VIEW country_teams AS
SELECT *
FROM teams
WHERE country = 'Spain';
CREATE VIEW country_team_wins AS
SELECT DISTINCT team_id
FROM competition_results
WHERE result_type = 'Win';
SELECT * FROM country_teams
WHERE id NOT IN (SELECT team_id FROM country_team_wins);