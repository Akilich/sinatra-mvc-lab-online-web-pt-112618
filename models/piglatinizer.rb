class PigLatinizer
  attr_reader :user_phrase
  
  def piglatinize(user_phrase)
    user_phrase.split(" ").collect { |word| piglatinize(word) }.join(" ")
    #user_phrase.split.map do |word|
    #  piglatinize_each_word
   # end.join(' ')
   
  end
  