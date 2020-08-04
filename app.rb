require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @full_string = []
    @number.times do
      @full_string << @phrase
    end
    "#{@full_string.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    @operator = ""
    case @operation
    when "multiply"
      @operator = "*"
    when "divide"
      @operator = "/"
    when "add"
      @operator = "+"
    when "subtract"
      @operator = "-"
    end
    @result = @number1.send(@operator, @number2)
    "#{@result}"
  end

end