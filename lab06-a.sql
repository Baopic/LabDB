CREATE TABLE competitions (
    id SERIAL PRIMARY KEY,
    rank TEXT NOT NULL,
    sport TEXT NOT NULL,
    year INTEGER NOT NULL,
    country TEXT NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL
);

CREATE TABLE competition_results (
    id SERIAL PRIMARY KEY,
    competition_id INTEGER NOT NULL REFERENCES competitions(id),
    team_id INTEGER NOT NULL REFERENCES teams(id),
    opponent_team TEXT NOT NULL,
    result_type TEXT NOT NULL
);