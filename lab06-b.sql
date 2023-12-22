ALTER TABLE competition_results ADD CONSTRAINT fk_competition_id FOREIGN KEY (competition_id) REFERENCES competitions(id);
ALTER TABLE competition_results ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES teams(id);
ALTER TABLE competition_results ADD COLUMN result_type TEXT NOT NULL;