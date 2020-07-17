class PigLatinizer
  
  def piglatinize(user_phrase)
    user_phrase.split.map do |word|
      piglatinize_word(word)
    end.join(' ')
  end
  
  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    
    word_array = word.split('')
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
  
 

    
  
  
