require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]

    erb :reverse_name
  end

  get '/square/:number' do
    @num = params[:number]

    erb :square
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    @words << params[:word1]
    @words << params[:word2]
    @words << params[:word3]
    @words << params[:word4]
    @words << params[:word5]
    
    erb :say_words
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]

    erb :say_phrase
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    erb :operation
  end


end