class PigLatinizer

def piglatinize(sentence)
  vowels = ['a','e','i','o','u']
  original = sentence.split
  piglatin_sentence = []
  original.each do |word|
    x = []
    letters = word.split("")
      if vowels.include?(letters.first.downcase)
        x << 'w'
      end
      while !vowels.include?(letters.first.downcase)
        x << letters.shift
      end
        x << 'ay'
        piglatin_sentence << letters.join + x.join
      end
    piglatin_sentence.join(" ")
end


end
