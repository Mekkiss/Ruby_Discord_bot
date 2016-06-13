require 'discordrb'

bot = Discordrb::Bot.new  token: ENV['DISCORD_BOT_TOKEN'] , application_id: ENV['DISCORD_APP_ID']

#You only need this for the initial run. Once the bot has joined the server. You no longer need the auth link.
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'


#events go here

bot.mention do |event|
  event.user.pm('You have mentioned me!')
end

bot.message(with_text: 'Ping!') do |event|
  bot.send_message(event.channel.id, 'Pong!', true)
end

bot.message(with_text: 'lit') do |event|
  event.respond ':fire: :fire:'
end

bot.message(with_text: 'gphm') do |event|
  bot.send_message(event.channel.id, 'git push heroku master', true)
end

bot.run
