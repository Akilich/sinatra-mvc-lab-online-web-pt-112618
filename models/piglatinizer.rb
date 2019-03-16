class PigLatinizer
  def piglatinize(user_phrase)
    user_input = user_phrase.split(" ")
        split_string= user_string.collect {|word| piglatinize_word(word)}

        split_string.join(" ")
end