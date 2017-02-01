require_relative "./team_data"

class Player
  attr_accessor :name, :position
  def initialize (name, position)
    @name = name
    @position = position
  end

end
