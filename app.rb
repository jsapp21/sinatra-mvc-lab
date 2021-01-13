require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @phrase = params[:user_phrase].split(" ")

        @phrase.map do |word|
            if word.scan(/[aeoui]/) == true
                word + "ay"
            else 
                first_letter = word.slice(0)
                new_word = word.delete_prefix(first_letter)
                final_word = new_word + first_letter + "ay" + " "
            end
        end 


    end

end