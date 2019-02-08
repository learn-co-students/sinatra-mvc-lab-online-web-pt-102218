require 'pry'
class PigLatinizer


  def piglatinize(text)
    if text.include?(" ")
      statement = text.split(" ")
      sentence = statement.collect do |w|
        piglatinize(w)
      end

     return sentence.join(" ")
    else
      array = text.scan /\w/
    end
      vowels = ['a','e','i','o','u','y', 'A', 'E', 'I', 'O', 'U', 'Y']
     if !vowels.include?(array[0]) && vowels.include?(array[1])
        remove = array.shift
        array.push(remove).push("ay").join("")
     elsif array.length == 1
        array.push("way").join("")
     elsif !vowels.include?(array[0]) && !vowels.include?(array[1]) && vowels.include?(array[2])
       first = array.shift(2)
       array.push(first).push("ay").flatten.join("")
     elsif vowels.include?(array[0]) && !vowels.include?(array[1]) && !vowels.include?(array[2]) && vowels.include?(array[3])
       array.push("way").join("")
     elsif !vowels.include?(array[0]) && !vowels.include?(array[1]) && !vowels.include?(array[2])
       array.unshift("ay").join("")
     elsif vowels.include?(array[0]) && !vowels.include?(array[1]) && vowels.include?(array[2]) && !vowels.include?(array[3])
       array.push("way").join("")

    end
  end
end
