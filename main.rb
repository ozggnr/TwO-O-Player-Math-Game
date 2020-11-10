require './players'
require './questions'
require './turn'

player_1 =  Players.new("Player 1", 3)
player_2 =  Players.new("Player 2", 3)
question = Question.new
c = question.questions(player_1.player)

while true
  if c[1] == true
    if c[0] == 'Player 1'
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
      puts "----NEW TURN----"
      c = question.questions(player_2.player)
    else
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
      puts "----NEW TURN----"
      c = question.questions(player_1.player)
    end
  else
    if c[0] == 'Player 1'
      player_1.lives = player_1.lives - 1
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
      if player_1.lives == 0
        puts "Player 2 wins "
        puts "----GAME OVER----"
        break
      end
      puts "----NEW TURN----"
      c = question.questions(player_2.player)
    else
      player_2.lives = player_2.lives - 1
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
      if player_2.lives == 0
        puts "----GAME OVER----"
        break
      end
      puts "----NEW TURN----"
      c = question.questions(player_1.player)
    end
  end

end
