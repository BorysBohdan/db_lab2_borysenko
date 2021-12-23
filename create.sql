
CREATE TABLE Player
(
  match_id         int	NOT NULL,
  player_name	char(50)	 NOT NULL,
  ct_kd    char(50)       NOT NULL,
  t_kd    char(50)       NOT NULL
);

CREATE TABLE Team
(
  team_name  char(50)	 UNIQUE NOT NULL,
  win_games     int      NULL,
  first_picks     int      NULL
);

CREATE TABLE Match_csgo
(
  match_id         int       UNIQUE NOT NULL,
  first_team_name  char(50)  NOT NULL,
  second_team_name  char(50)  NOT NULL,
  date        date       NOT NULL,
  first_team_total_score    int       NOT NULL,
  second_team_total_score    int       NOT NULL,
  M1 char(50)  NOT NULL,
  M2 char(50)  NOT NULL,
  M3 char(50)  NOT NULL
);


ALTER TABLE Team ADD CONSTRAINT PK_Team PRIMARY KEY (team_name);
ALTER TABLE Match_csgo ADD CONSTRAINT PK_Match PRIMARY KEY (match_id);


ALTER TABLE Match_csgo ADD CONSTRAINT FK_Match1_Team FOREIGN KEY (first_team_name) REFERENCES Team (team_name);
ALTER TABLE Match_csgo ADD CONSTRAINT FK_Match2_Team FOREIGN KEY (second_team_name) REFERENCES Team (team_name);
ALTER TABLE Player ADD CONSTRAINT FK_Player_Team FOREIGN KEY (match_id) REFERENCES Match_csgo (match_id);