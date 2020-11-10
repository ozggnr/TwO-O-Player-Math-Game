require './turn'
require './players'

class Question
  def questions(player)
    value = Random.new
    value1 = value.rand(1...20)
    value2 = value.rand(1...20)
    print "#{player} : "
    puts "What does #{value1} plus #{value2} equal?"
    print "> "
    answer = gets.chomp.to_i
    result = value1 + value2
    if answer == result
      puts "YES! You are correct."
      trueorfalse = true
      [player, trueorfalse]
    else 
      puts "Seriously? No!"
      trueorfalse = false
      [player, trueorfalse]
    end
  end
end 


