class PigLatinizer

    def create_word
        @phrase = PigLatinizer.new(params[:user_phrase])
    end

    def each_word
        @phrase.map do |word|
            if wordtext.scan(/[aeoui]/) == true 
            end
        end
    end


    def convert

        word = text.scan(/[bcdfghjklmnpqrstvwxyz]/)

        
    end

end