import FinanceDataReader as fdr
import mplfinance as mpf
import pandas as pd
from pykrx import stock
# stock_list = fdr.StockListing('KRX')
# code = stock_list['Code']
# start_date = '2021-01-01'
# end_date = pd.Timestamp.today().strftime('%Y-%m-%d')
# df = fdr.DataReader(code,start_date,end_date)
# df.rename(columns={"Close":"종가","Volume":"거래량"},inplace = True)
# df.insert(5,'등락',df['종가'].diff())
# df['5일_이동평균']=df['종가'].rolling(5).mean()
# df['20일_이동평균']=df['종가'].rolling(20).mean()
# df['60일_이동평균']=df['종가'].rolling(60).mean()
# df['120일_이동평균']=df['종가'].rolling(120).mean()
# df = df[['종가','등락','거래량','5일_이동평균','20일_이동평균','60일_이동평균','120일_이동평균']]
# # df.to_excel("삼성전자_V1.xlsx")
# # df.to_csv("삼성전자_V1.csv")
# df1 = df[['종가','거래량']]
# print(df1)


# 모든 종목 코드를 불러옵니다.
stock_list = fdr.StockListing('KRX')
code = stock_list['Code']  # 'Code'가 아닌 'Symbol' 사용

start_date = '2023-01-01'
end_date = pd.Timestamp.today().strftime('%Y-%m-%d')

# 종목 코드를 리스트로 변환
code_list = code.tolist()

# 각 종목의 데이터를 조회하고 '종가'와 '거래량'만 선택하여 DataFrame 생성
dfs = []
for c in code_list:
    try:
        data = fdr.DataReader(c, start_date, end_date)
        df = data[['Close', 'Volume']]  # '종가'와 '거래량'만 선택
        df['Code'] = c  # 종목 코드 열 추가
        df['Date'] = df.index  # 날짜 열 추가
        dfs.append(df)
        print(f"Retrieved data for {c}")
    except Exception as e:
        print(f"Error retrieving data for {c}: {e}")

# 모든 종목 데이터를 하나의 DataFrame으로 합침
combined_df = pd.concat(dfs)

# '종가'와 '거래량' 데이터 검토
print(combined_df[['Code', 'Date', 'Close', 'Volume']])

# 결과를 Excel 파일로 저장
combined_df.to_excel("stock_data_with_dates.xlsx", index=False)  # index 열을 저장하지 않음