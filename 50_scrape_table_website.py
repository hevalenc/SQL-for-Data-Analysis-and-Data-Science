import pandas as pd

data = pd.read_html('https://en.wikipedia.org/wiki/Programming_languages_used_in_most_popular_websites')

print('Tabelas extraídas do website:')
print(data)

df = data[0]

print('\nPrimeira tabela extraída da variável "data":')
print(df.columns)
print(df)

print('\nColuna "Popularity(unique visitors per month)[1]":')
print(df['Popularity(unique visitors per month)[1]'])

print('\nColuna "Websites":')
print(df.Websites)

print('\nColuna "Back-end(Server-side)":')
print(df['Back-end(Server-side)'])

print('\nMédia da coluna "Popularity(unique visitors per month)[1]":')
print(df['Popularity(unique visitors per month)[1]'].mean())

print('\nMediana da coluna "Popularity(unique visitors per month)[1]":')
print(df['Popularity(unique visitors per month)[1]'].median())

print('\nDesvio padrão da coluna "Popularity(unique visitors per month)[1]":')
print(df['Popularity(unique visitors per month)[1]'].std())

print('\nVariância da coluna "Popularity(unique visitors per month)[1]":')
print(df['Popularity(unique visitors per month)[1]'].var())

print('\nDetalhamento da coluna "Popularity(unique visitors per month)[1]":')
print(df['Popularity(unique visitors per month)[1]'].describe())
