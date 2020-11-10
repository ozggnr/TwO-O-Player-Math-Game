require './turn'

class Players
  attr_accessor :player, :lives
  def initialize(player, lives)
    @player = player
    @lives = lives
  end
end
