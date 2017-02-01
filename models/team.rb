require_relative "./team_data"
require_relative "./player"
require 'pry'

class Team
  attr_accessor :name, :players

  def initialize(name)
    @name = name
    @players = nil
  end

  def self.all
    team_data = TeamData::ROLL_CALL
    list_of_teams = team_data.map do |team_name, players|
      team = Team.new(team_name.to_s)
      team.players = players.map do |position, name|
        Player.new(name, position)
      end
      team
    end
    list_of_teams
    #returns all my teams
  end

end
