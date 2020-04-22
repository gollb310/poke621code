class Main
  require 'discordrb'

  bot = Discordrb::Bot.new token: '<token id>', client_id: 702596355066953848
  targetChannelId = 0
  bot.message(from: "Pokécord") do |event|
    content = event.content
    words = content.split
    if(words[0] == "Congratulations")
      pokelength = words[7].length - 2
      pokemon = words[7][0..pokelength]
      command = "b!e621 " + pokemon
      bot.channel(targetChannelId).send_message(command)
    end
  end
  bot.run
end

Main.new