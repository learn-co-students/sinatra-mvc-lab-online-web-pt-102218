require 'pry'
class PigLatinizer
  
  attr_accessor :text
  
  def initialize
  end
  
  def piglatinize(text)
    return "Input Failure" unless text
    text.split(' ').map do |word|
      word_arr = word.split(/([aeiouAEIOU].*)/)
      # binding.pry
      word_arr[0] = 'w' if word_arr[0] == ''
      latinized = word_arr[1] + word_arr[0] + 'ay'
    end.join(' ')
  end
  
end