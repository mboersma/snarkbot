#!/bin/sh

: ${SLACK_TOKEN:?"environment variable must be set to a valid bot access token."}

# Update rtmbot.conf to include the $SLACK_TOKEN
sed -i '' -e "s/SLACK_TOKEN:.*/SLACK_TOKEN: \"$SLACK_TOKEN\"/" rtmbot.conf

exec rtmbot
