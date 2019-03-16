class PigLatinizer
  def piglatinize(user_phrase)
    user_input = user_phrase.split(" ")
        split_phrase= user_input.collect {|word| piglatinize_word(word)}
        split_phrase.join(" ")
  end
    
  def piglatinize_word(word)
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            cons = []
            cons << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                cons << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                    cons << word[2]
                end
            end
            "#{word[cons.length..-1] + cons.join + "ay"}"
        end

    end
end