#!/bin/bash
#sends stdin to Telegram bot. Can receive stream from pipe

txt=""
while read line
do
  txt="$txt\n$line"
done < "${1:-/dev/stdin}"

curl -X POST \
     -H 'Content-Type: application/json' \
     -d "{\"chat_id\": \"[CHAT ID]\", \"text\": \"$txt\", \"disable_notification\": true}" \
     https://api.telegram.org/bot[BOT ID]:[BOT KEY]/sendMessage
