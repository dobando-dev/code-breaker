require 'sinatra'
require './config'
require './lib/code_breaker'

get '/' do
    erb :index
end

post '/arriesgar' do
    code_breaker = CodeBreaker.new(params[:secreto])
    if code_breaker.arriesgar(params[:numero])
        session[:feedback] = "Chee! Ganaste!"
    else
        session[:feedback] = "Boludo! fuiste!"    
    end
    erb :index
end