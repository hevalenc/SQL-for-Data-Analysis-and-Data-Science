import pandas as pd

'''Arquivo gerado no PostgreSQL'''

data = pd.read_csv('airlines_data_part.csv')

print(data.head())
print()
print(data.tail())
