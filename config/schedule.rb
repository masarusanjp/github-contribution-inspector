# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
# Learn more: http://github.com/javan/whenever

set :output, "log/crontab.log"
set :environment, :production

every 1.day, :at => '11:00 pm' do
  command "ruby bin/check_my_contribution"
end
