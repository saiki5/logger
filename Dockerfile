# ベースイメージ
# FROM alpine
FROM alpine:latest

# 作業ディレクトリを /app に設定
# WORKDIR /app
WORKDIR /app/output

# 依存ファイル → インストール
# COPY greet.sh .
# COPY greet.sh /greeter/docker-greeter/greet.sh

# ローカルの log_message.sh を /app にコピー

COPY log_message.sh /app/
# COPY /app/app/log_message.sh
# COPY greet.sh greet.sh
# COPY greet.sh /usr/local/bin/greet.sh

# 
# RUN chmod +x /greeter/docker-greeter/greet.sh

# 実行権限を付与
RUN chmod +x /app/log_message.sh

# RUN chmod +x greet.sh
# RUN chmod +x /usr/local/bin/greet.sh

# アプリ本体
COPY . .

# 起動コマンド
# CMD ["alpine", "greet.sh"]

# ENTRYPOINT を設定（コンテナ起動時に必ず実行される）
ENTRYPOINT ["/app/log_message.sh"]

# ENTRYPOINT ["./greet.sh"]
# ENTRYPOINT ["/greeter/docker-greeter/greet.sh"]
# ENTRYPOINT ["/usr/local/bin/greet.sh"]