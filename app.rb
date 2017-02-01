require 'pry'
require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @team_name = params["team_name"]
  teams = Team.all
  teams.each do |team|
    if team.name == @team_name
      @players = team.players
    end
  end
  erb :team
end

get "/players/:player_name" do
  # LEFT AS AN EXERCISE FOR THE READER
end
