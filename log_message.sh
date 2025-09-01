#!/bin/sh

# このスクリプトは、MESSAGE という名前の環境変数を読み取ります。
echo "$MESSAGE"

# $(date) コマンドで現在時刻を取得
date

# タイムスタンプを安全に取得
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# 保存先 (例: /tmp/log.txt に追記)
LOG_FILE="/app/output/log.txt"

echo "[${TIMESTAMP}] - [${MESSAGE}]" >> "$LOG_FILE"

# # /app ディレクトリを必ず作成
# mkdir -p /app

# # 「[時刻] - [環境変数 MESSAGE の内容]」という形式の文字列を作成します。
# # 作成した文字列を、コンテナ内の /app/log.txt というファイルに追記 (上書きではない) するようにします。
# echo "[$(date '+%Y-%m-%d %H:%M:%S')] - [$MESSAGE]" >> /app/log.txt

# # スクリプトに実行権限を付与します (chmod +x log_message.sh)。