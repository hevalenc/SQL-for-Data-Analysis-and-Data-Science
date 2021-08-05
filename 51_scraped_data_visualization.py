import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_html('https://en.wikipedia.org/wiki/Programming_languages_used_in_most_popular_websites')

print('Tabelas extraídas do website:')
print(data)

df = data[0]

print('\nPrimeira tabela extraída da variável "data":')
print(df.columns)
print(df)

websites = df['Websites']
unique_visitors_per_month = df['Popularity(unique visitors per month)[1]']
exp = [0.25,0.25,0.25,0,0,0,0,0,0,0,0,0,0] #será usado para configurar cada pedaço do gráfico
plt.pie(unique_visitors_per_month, labels=websites, shadow=True, radius=2, autopct='%2.1f%%', explode=exp)
plt.show()
