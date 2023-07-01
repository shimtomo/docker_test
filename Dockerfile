#Docker Hubにあるのを選ぶ
FROM python:3.10-slim

# タイムゾーンを日本時間に設定
ENV TZ=Asia/Tokyo
# 環境変数を設定. これはコンテナ内のディレクトリ.
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# /appディレクトリを作成. ここにコードを配置する. これはコンテナ内のディレクトリ.
WORKDIR /app

# ホストのカレントディレクトリの内容を/appのコンテナにコピーする。
#COPY . .

#requirements.txtで指定された必要なパッケージをインストールする。 
#RUN pip install -r requirements.txt

