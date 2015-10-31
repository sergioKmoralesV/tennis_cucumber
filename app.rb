require 'sinatra'
require './lib/score.rb'

scorer=Score.new

get '/' do
  scorer=Score.new
  erb :welcome
end

get '/score' do
  @jugador1=scorer.get_player1
  @jugador2=scorer.get_player2
  erb :score
end
post '/anota1' do
  scorer.scores_1
  redirect '/score'
end

post '/anota2' do
    scorer.scores_2
    redirect '/score'
end
