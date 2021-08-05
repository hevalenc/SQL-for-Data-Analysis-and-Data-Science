import pandas as pd

df = pd.read_csv('airlines_data_part.csv')

print('Tipo dos dados:')
print(df.dtypes)
print('\nDetalhamento dos dados - média, mínimo, percentils, máximo:')
print(df.describe())
print('\nDetalhamento dos dados da coluna "sales" - média, mínimo, percentils, máximo:')
print(df.sales.describe())
print('\nMédia da coluna "sales":')
print(df['sales'].mean())
print('\nMediana da coluna "sales":')
print(df['sales'].median())
