class Main
  require 'discordrb'

  bot = Discordrb::Bot.new token: 'NzAyNTk2MzU1MDY2OTUzODQ4.XqCZ0w.B--OaX0oKrSYAMz6Sjm6YZqWYqQ', client_id: 168123456789123456

  bot.message(with_text: 'Ping!') do |event|
    event.respond 'Pong!'
  end
  bot.run
end
