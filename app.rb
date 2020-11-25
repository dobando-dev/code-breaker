require 'sinatra'
require './config'
require './lib/code_breaker'

get '/' do
    session[:secreto] = rand(10)
    session[:app] = CodeBreaker.new(session[:secreto])
    session[:feedback] = ""
    erb :index
end

post '/arriesgar' do
    session[:secreto] = params[:secreto] != "" ? params[:secreto] : session[:secreto]

    if(!session[:app])
        session[:app] = CodeBreaker.new(session[:secreto])
    end

    if(params[:chances]!="")
        session[:app].chances = params[:chances]
    end
    
    code_breaker = session[:app]
    result = code_breaker.arriesgar(params[:numero])
    if result == true
        session[:feedback] = "Chee! Ganaste!"
    elsif result == false
        if code_breaker.chances > 0
            session[:feedback] = "No! Te quedan #{code_breaker.chances} chances"
        else
            session[:feedback] = "Boludo! fuiste!"
        end
    else
        session[:feedback] = params[:numero]    
    end
    erb :index
end