require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name]
"#{@reverse_name.reverse}"

end

get '/square/:number' do
  @num = params[:number].to_i
  "#{@num * @num}"
end

get '/say/:number/:phrase' do
  phrase = []
  @the_num = params[:number].to_i
   @the_phrase = params[:phrase]
  @the_num.times do 
    phrase << "#{@the_phrase}"
  end
  phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @w1 = params[:word1]
  @w2 = params[:word2]
  @w3 = params[:word3]
  @w4 = params[:word4]
  @w5 = params[:word5]
  # arr = @w1..@w5.to_a
  # "#{arr.join(" ")}."
  "#{@w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5}."
end

get '/:operation/:number1/:number2' do
  @ops = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  case @ops
  when 'add'
    "#{@num1 + @num2}".to_s
  when 'subtract'
    "#{@num1 - @num2}".to_s
  when 'divide'
    "#{@num1 / @num2}".to_s
  when 'multiply'
    "#{@num1 * @num2}".to_s
  end
end




end