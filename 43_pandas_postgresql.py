import psycopg2 as pg2
import pandas as pd

conn = pg2.connect(host='localhost', database='Airlines', user='postgres', password=12345)

cur = conn.cursor()

cur.execute('SELECT * FROM ticket_flights')

print('Imprimindo todos os dados da tabela "ticket_flights" em formato de lista\n', cur.fetchall())

df1 = pd.read_sql_query('SELECT * FROM aircrafts', conn)

print('\nImprimindo todos os dados da tabela "aircrafts" em formato de tabela\n', df1)

df2 = pd.read_sql_query('SELECT * FROM seats s JOIN boarding_passes b ON s.seat_no = b.seat_no', conn)

print('\nUnião das tabelas "seats" e "boarding_passes" em formato de tabela\n', df2)

df3 = pd.read_sql_query('SELECT * FROM seats NATURAL JOIN boarding_passes LIMIT 1000', conn)

print('\nUnião das tabelas "seats" e "boarding_passes" em formato de tabela\n', df3)
