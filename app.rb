require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample
  if @comp_move == "rock"
    @outcome = "We tied"
  elsif @comp_move == "scissors"
    @outcome =  "We won"
  elsif @comp_move == "paper"
    @outcome = "We lost"
  end
  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample
  if @comp_move == "rock"
    @outcome = "We won"
  elsif @comp_move == "scissors"
    @outcome =  "We lost"
  elsif @comp_move == "paper"
    @outcome = "We tied"
  end
  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample
  if @comp_move == "rock"
    @outcome = "We lost"
  elsif @comp_move == "scissors"
    @outcome =  "We tied"
  elsif @comp_move == "paper"
    @outcome = "We won"
  end
  erb(:scissors)
end
