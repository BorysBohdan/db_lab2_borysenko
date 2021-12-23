import psycopg2

username = 'borysenko'
password = 'admin'
database = 'ddd'
host = 'localhost'
port = '5432'


query_1 = '''
SELECT player_name, ct_kd FROM Player WHERE match_id = 0
'''

query_2 = '''
SELECT M1 FROM Match_csgo 
'''

query_3 = '''
SELECT team_name, win_games FROM Team WHERE win_games != 0
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with con:

    cur = con.cursor()

    print('1.  \n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2.  \n')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3.  \n')
    cur.execute(query_3)
    for row in cur:
        print(row)
