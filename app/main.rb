class Main
  require 'discordrb'

  bot = Discordrb::Bot.new token: 'NzAyNTk2MzU1MDY2OTUzODQ4.XqCWrQ.Cio5lT4c0Oug5dOsT3MFiaCSdOw', client_id: 168123456789123456

  bot.message(with_text: 'Ping!') do |event|
    event.respond 'Pong!'
  end
  bot.run
end
