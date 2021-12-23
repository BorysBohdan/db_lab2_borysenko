-- Статистика гравця за сторону захисту у вигляді "кількість вбивст- кількість смертей (стовпчикова)
SELECT player_name, ct_kd FROM Player WHERE match_id = 0

-- Запити для 3 кругових діаграм (статистика вибору першої, другої та третьої карти)
SELECT M1 FROM Match_csgo 
SELECT M2 FROM Match_csgo 
SELECT M3 FROM Match_csgo 

-- Стовпчикова діаграма команд, що вигравали в цих 6 матчах
SELECT team_name, win_games FROM Team WHERE win_games != 0