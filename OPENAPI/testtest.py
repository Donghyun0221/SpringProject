import time
from bs4 import BeautifulSoup
import requests
# 필요한 작업 수행
# driver.get("https://finance.daum.net/news#stock")
# 브라우저 닫기
# driver.quit()


for page in range(1, 11):
    # 각 페이지 URL 생성
    page_url = f"https://finance.daum.net/news?page=#stock?page={page}"
    res = requests.get(page_url)
    soup = BeautifulSoup(res.content, "html.parser")
    print(soup.prettify())
    lis = soup.select('.listW first li')
    print(lis)
