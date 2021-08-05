import psycopg2 as pg2

conn = pg2.connect(host='localhost', database='Airlines', user='postgres', password=12345)

cur = conn.cursor() #utilizado para navegar no banco de dados

cur.execute('SELECT * FROM ticket_flights')

print(cur.fetchmany(5))
