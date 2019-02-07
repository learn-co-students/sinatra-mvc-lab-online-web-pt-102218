class PigLatinizer
  
  def piglatinize(user_phrase)
    pig_words = user_phrase.split.map do |word|
      pig_latin_word(word)
    end
    pig_words.join(" ")
  end

  
  def pig_latin_word(word)
    vowels = %w(a, e, i, o, u)
    word_array = word.split("")
    if vowels.include?(word_array[0])
       word_array.join('')
    else
       until vowels.include?(word_array[0])
       word_array += word_array.shift(1)
       end
       word = word_array.join('')
      "#{word}ay"
    end
  end

    
  
  
end
