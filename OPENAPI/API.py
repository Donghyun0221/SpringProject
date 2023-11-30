import json

import requests


APP_KEY = "PSsHz3OuWksPVXcLieIiLMU419Q2k6B3Z01b"
APP_SECRET = "4JfwspztmEbd3YFdSMhtKjfRmvfGZAz4I+6JMoBZdPtbpOUJl3S5EWTrL0MxWa53snQQEotjAmA6MNDggnNwqdlnslwow0tzxo9qT54CgdiHGVe3V1s0PGgFb4hyDPrFftP6wyOvLY3DuvCQiMJWhsKIS0YyoeFtoNSG0GVf+XdQ8fVvSgo="
URL_BASE = "https://openapivts.koreainvestment.com:29443" #모의투자서비스

headers = {"content-type":"application/json"}
body = {"grant_type":"client_credentials",
        "appkey":APP_KEY,
        "appsecret":APP_SECRET}

PATH = "oauth2/tokenP"

URL = f"{URL_BASE}/{PATH}"

res = requests.post(URL, headers=headers, data=json.dumps(body))
ACCESS_TOKEN = res.json()["access_token"]
# 해시키 발급받기
def hashkey(datas):
  PATH = "uapi/hashkey"
  URL = f"{URL_BASE}/{PATH}"
  headers = {
    'content-Type' : 'application/json',
    'appKey' : APP_KEY,
    'appSecret' : APP_SECRET,
    }
  res = requests.post(URL, headers=headers, data=json.dumps(datas))
  hashkey = res.json()["HASH"]

  return hashkey

#주식 현재가 시세조회
PATH = "uapi/domestic-stock/v1/quotations/inquire-price"
URL = f"{URL_BASE}/{PATH}"
print(URL)
headers = {"Content-Type":"application/json",
           "authorization": f"Bearer {ACCESS_TOKEN}",
           "appKey":APP_KEY,
           "appSecret":APP_SECRET,
           "tr_id":"FHKST01010100"}

params = {
    "fid_cond_mrkt_div_code":"J",
    "fid_input_iscd":"005930"
}

res = requests.get(URL, headers=headers, params=params)
print(res.json())

