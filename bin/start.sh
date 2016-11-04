#!/bin/sh

: ${SLACK_TOKEN:?"environment variable must be set to a valid bot access token."}

# Update rtmbot.conf to include the $SLACK_TOKEN
sed -e "s/SLACK_TOKEN:.*/SLACK_TOKEN: \"$SLACK_TOKEN\"/" rtmbot.tpl > rtmbot.conf

exec rtmbot
