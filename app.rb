require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == 'add'
      "#{num1 + num2}"
    elsif op == 'subtract'
      "#{num1 - num2}"
    elsif op =='multiply'
      "#{num1 * num2}"
    elsif op == 'divide' && num2 != 0
      "#{num1 / num2}"
    else
      "No such operation"
    end
  end

end