import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('airlines_data_part.csv')
df1 = df.sample(15)
df2 = df.sample(30)
df3 = df.sample(500)
df4 = df.sample(1000)

print('Tabela "airlines_data_part":')
print(df)
print('\nFormato da tabela (linhas x colunas):')
print(df.shape)
print('\nQuantidade total de dados:')
print(df.size)
print('\nValor médio da coluna "sales" com duas casas decimais:')
print(round(df.sales.mean(), 2))
print('\nAmostra com 15 registros da tabela:')
print(df1)
print()

sales = df1['sales']
months = df1['month']
plt.bar(months, sales)
plt.ylabel('Sales')
plt.xlabel('Summer Months')
plt.show()

print('\nAmostra com 30 registros da tabela:')
print(df2)

sales = df2['sales']
months = df2['month']
plt.bar(months, sales)
plt.xticks(months, rotation='horizontal', size=10)
plt.ylabel('Sales')
plt.xlabel('Summer Months')
plt.show()

print('\nAmostra com 500 registros da tabela:')
print(df3)

sales = df3['sales']
months = df3['month']
plt.bar(months, sales)
plt.xticks(months, rotation='horizontal', size=10)
plt.ylabel('Sales')
plt.xlabel('Summer Months')
plt.show()
