require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end
  
  get '/square/:number' do
    @squared = params[:number].to_i ** 2 
    "#{@squared}"
  end
  
  get '/say/:number/:phrase' do
    phrase = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do 
      phrase += @phrase
    end
    phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    result = ''
    
    if params[:operation] == 'add'
      result = (num1 + num2).to_s
    elsif params[:operation] == 'subtract'
      result = (num1 - num2).to_s
    elsif params[:operation] == 'multiply'
      result = (num1 * num2).to_s
    elsif params[:operation] == 'divide'
      result = (num1 / num2).to_s
    end
  end
end