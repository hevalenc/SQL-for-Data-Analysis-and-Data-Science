import requests
from bs4 import BeautifulSoup

response = requests.get('https://en.wikipedia.org/wiki/Programming_languages_used_in_most_popular_websites')

soup = BeautifulSoup(response.text, 'html.parser')

print('\nCorpo da página:')
print(soup.body)
print('\nTítulo da página:')
print(soup.title)
print('\nBuscando tags específicas:')
print(soup.find_all('div'))
print('\nBuscando tags específicas:')
print(soup.find_all('p'))
