class Main
  require 'discordrb'

  bot = Discordrb::Bot.new token: '<Token>', client_id: 702596355066953848
  targetChannelId = 0
  bot.message(from: "Pokécord") do |event|
    content = event.content
    words = content.split
    if(words[0] == "Congratulations")
      pokemon = words[7].delete_suffix("!")
      command = "b!e621 " + pokemon
      bot.channel(targetChannelId).send_message(command)
    end
  end
  bot.run
end

Main.new