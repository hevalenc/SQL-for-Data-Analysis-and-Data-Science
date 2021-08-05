import pandas as pd
import webbrowser

'''Arquivo gerado no PostgreSQL'''

df = pd.read_csv('airlines_data_part.csv')
df1 = df[['passenger_name', 'day', 'arrival_city']]

print('As primeiras 5 linhas da tabela:')
print(df.head())
print('\nNome das colunas da tabela:')
print(df.columns)
print('\nMostrar somente uma coluna:')
print(df.passenger_name)
print('\nAs últimas 5 linhas da tabela:')
print(df.tail())
print('\nTabela customizada com os registros da tabela antiga:')
print(df1)
print('\nInformação do registro na linha 6:') #as linhas começam a contar do 0
print(df.iloc[6])
print('\nRanqueando todos os dados:')
print(df.rank())
print('\nMostrar todas as informações da tabela:')
print(df.info)
print()

website = 'https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html'
webbrowser.open(website)
