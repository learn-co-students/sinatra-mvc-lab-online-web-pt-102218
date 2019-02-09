class PigLatinizer
  def piglatinize(text)
    pig_latinized_string = ""
    words = text.split(" ")
    words.each_with_index do |word, i|
      if i + 1 != words.length
        letter_count = 0
        while !word[letter_count].match(/[aeiouAEIOU]/) || word.length == letter_count
          letter_count += 1
        end
        if letter_count == 0
          pig_latinized_string += word + "way "
        else
        pig_latinized_string += word[letter_count..word.length] + word[0..letter_count-1] + "ay "
        end
      else
        letter_count = 0
        while !word[letter_count].match(/[aeiouAEIOU]/) || word.length == letter_count
          letter_count += 1
        end
        if letter_count == 0
          pig_latinized_string += word + "way"
        else
        pig_latinized_string += word[letter_count..word.length] + word[0..letter_count-1] + "ay"
        end
      end
    end
    pig_latinized_string
  end

end
