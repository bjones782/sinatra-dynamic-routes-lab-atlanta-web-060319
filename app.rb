require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @revname = params[:name]
    @revname.reverse
  end 

  # get "/square/:number" do
  #   @num = params[:number].to_i
  #   square(@num)
  # end 

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end 

  get "/say/:number/:phrase" do
    @numb = params[:number].to_i
    @phr = params[:phrase]
    "#{params[:phrase]}" * "#{params[:number]}".to_i
  end 

  # get "/say/:word1/:word2/:word3/:word4/:word5" do
  #   @w1 = params[:word1]
  #   @w2 = params[:word2]
  #   @w3 = params[:word3]
  #   @w4 = params[:word4]
  #   @w5 = params[:word5]
  #   "#{w1} #{w2} #{w3} #{w4} #{w5}."
  # end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  # get "/:operation/:number1/:number2" do
  #   @op = params[:operation]
  #   @n1 = params[:number1]
  #   @n2 = params[:number2]
  #   "#{n1} #{op} #{n2}"
  # end 

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end