import psycopg2 as pg2
import pandas as pd
from sqlalchemy import create_engine

data = pd.read_html('https://en.wikipedia.org/wiki/Programming_languages_used_in_most_popular_websites')

df = data[0]

print(df.columns)
print(df)

df = df.rename(columns={'Popularity(unique visitors per month)[1]':'Popularity',
                        'Front-end(Client-side)':'front_end',
                        'Back-end(Server-side)':'back_end'})

conn = pg2.connect(host='localhost', dbname='programming', user='postgres', password=12345)

engine = create_engine('postgresql+psycopg2://postgres:12345@localhost/programming')

df.to_sql('popular_languages', engine, if_exists='append', index=False) #'popular_languages' será o nome da tabela
