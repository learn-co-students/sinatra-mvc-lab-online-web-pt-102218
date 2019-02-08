require 'pry'
class PigLatinizer


  def piglatinize(text)
    array = text.scan /\w/
    vowels = ['a','e','i','o','u','y', 'A', 'E', 'I', 'O', 'U', 'Y']
     if !vowels.include?(array[0]) && vowels.include?(array[1])
        remove = array.shift
        array.push(remove).push("ay").join("")
     elsif array.length == 1
        array.push("way").join("")
   end
  end
end
