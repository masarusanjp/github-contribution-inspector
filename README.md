# github-contribution-inspector
Check my todays contribution

# usage

## set environment variables

```
SLACK_CHANNEL=#{slack_channel_mention_to}
SLACK_MENTION_TO=#{your_slack_name}
SLACK_NOTIFY_WEBHOOK_URL=#{slack_webhook_url}
```

## deploy via github

```
git clone git@github.com:masarusanjp/github-contribution-inspector.git
bundle install
bundle exec whenever update
```
