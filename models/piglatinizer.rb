class PigLatinizer
  attr_reader :user_phrase
  
  def piglatinize(user_phrase)
    user_phrase.split(" ").collect { |word| piglatinize(word) }.join(" ")
    #user_phrase.split.map do |word|
    #  piglatinize_each_word
   # end.join(' ')
   vowels = %w{a e i o u}
    word.each_char do |chr|
    index = word.index(chr)
    if index != 0 && vowels.include?(chr.downcase)
      consonants = word.slice!(0..index-1)
      return word + consonants + "ay"
    elsif index == 0 && vowels.include?(chr.downcase)
      return word + "ay"
    end
  end
end
  