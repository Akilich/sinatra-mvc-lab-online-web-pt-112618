class PigLatinizer
  def piglatinize(user_phrase)
    user_input = user_phrase.split(" ")
        split_phrase= user_input.collect {|word| piglatinize_word(word)}

        split_string.join(" ")
end