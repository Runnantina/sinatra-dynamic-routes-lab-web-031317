require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    reverse_name = params[:name].reverse
    reverse_name.to_s
  end

  get "/square/:number" do
    number = params[:number]
    (number.to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    # binding.pry

    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}\n" * number

    # "#{(phrase.(number.to_i).times).to_s}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word_1 = params[:word1]
    word_2 = params[:word2]
    word_3 = params[:word3]
    word_4 = params[:word4]
    word_5 = params[:word5]
    "#{word_1}" + " #{word_2}" + " #{word_3}" + " #{word_4}" + " #{word_5}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num_1 = params[:number1].to_i
    num_2 =  params[:number2].to_i

      if operation == "add"
        answer = num_1 + num_2
      elsif operation == "subtract"
        answer = num_1 - num_2
      elsif operation == "multiply"
        answer = num_1 * num_2
      elsif operation == "divide"
        answer = num_1 / num_2
      end
        answer.to_s
  end


end

# params tells sinatra for any user input for
