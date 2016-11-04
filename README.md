# snarkbot
A Slack bot that interrupts and makes you less productive.

## How To
Run the docker image and pass in a Slack bot token. Assuming `$SLACK_TOKEN` is
set in your environment:

```shell
docker run -e "SLACK_TOKEN=$SLACK_TOKEN" quay.io/mboersma/snarkbot
```
