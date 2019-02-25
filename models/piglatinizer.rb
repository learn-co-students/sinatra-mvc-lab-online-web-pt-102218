require 'pry'
class PigLatinizer 
  
  attr_reader :phrase
  
  # def splits
  #   phrase.split(" ")
  # end
  
  def piglatinize(phrase)
    array = phrase.split(" ")
    array.map do |word|
      letters = word.split("")
      #binding.pry
      if !letters.first.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !letters[1].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !letters[2].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? 
        #binding.pry
        c = letters.shift 
        letters << c
        d = letters.shift 
        letters << d
        e = letters.shift 
        letters << e
        letters << "ay"
        letters.join
      elsif !letters.first.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !letters[1].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? 
        c = letters.shift 
        letters << c 
        d = letters.shift 
        letters << d 
        letters << "ay"
        letters.join
      elsif !letters.first.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? 
        c = letters.shift 
        letters << c
        letters << "ay"
        letters.join
      else
        letters << "way"
        letters.join
      end
    end.join(" ")
  end
  
end