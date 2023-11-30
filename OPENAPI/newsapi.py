from selenium import webdriver
from selenium.webdriver.common.by import By
import time
driver = webdriver.Edge('./msedgedriver.exe')
from bs4 import BeautifulSoup
import pandas as pd

# 필요한 작업 수행
# driver.get("https://finance.daum.net/news#stock")
# 브라우저 닫기
# driver.quit()

def get_href_or_none(tag):
    try:
        return tag.get('href')
    except AttributeError:
        return issue

arr = []
for page in range(1, 11):
    # 각 페이지 URL 생성
    page_url = f"https://finance.daum.net/news?page=#stock?page={page}"

    # 해당 페이지로 이동
    driver.get(page_url)
    time.sleep(2)
    # driver.find_element(By.XPATH,'//*[@id="boxApp"]/div[2]/div[1]/table/tbody/tr/td[3]/a').click()
    soup = BeautifulSoup(driver.page_source, "html.parser")
    # print(soup.prettify())
    lis = soup.select('.listW.first li')

    for li in lis:
        title = li.select_one('.tit').text
        issue = li.select_one('.txt').text
        a_tag = li.select_one('.thumb')
        # href = a_tag.get('href')
        href = get_href_or_none(a_tag)
        dateNcite = li.select_one('.date').text
        print(title,href,dateNcite)
        # arr.append([title, href, dateNcite])
        # print(arr)
        # 결과 출력
        # print(title,href,dateNcite)
        arr.append({
            'title': title,
            'href': href,
            'dateNcite': dateNcite
        })

    # 데이터를 Oracle DB에 저장
df = pd.DataFrame(arr)
    # 데이터를 엑셀 파일로 저장
df.to_excel('news_data.xlsx', index=False)
driver.quit()