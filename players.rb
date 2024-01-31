class Players
  attr_accessor :name, :player_life_left

  def initialize(name)
    @name = name
    @player_life_left = 3
  end
end
