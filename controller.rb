require('sinatra')
require 'sinatra/contrib/all'
require_relative('./models/game')
require('json')


get "/" do
  "Home page"
  erb(:home)
end

get "/rules" do
  "Rules page"
  erb(:rules)
end

get "/game/:play1/:play2" do
  game = Game.new(params[:play1], params[:play2])
  @game = game.winner()
  erb(:result)
end