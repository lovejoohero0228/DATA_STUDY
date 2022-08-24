from urllib import request
from bs4 import BeautifulSoup

target=request.urlopen("https://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108")

soup= BeautifulSoup(target,"html.parser")

for location in soup.select("location"):
    print(location.select_one("city").string)
    print(location.select_one("wf").string)
    print(location.select_one("tmn").string)
    
