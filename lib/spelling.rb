class Spelling
  def check(input)
    dictionary = ["Cat", "Dog", "Good"]
    downcase_dictionary = dictionary.map!(&:downcase)

    sentence = input.split(" ")
    
    sentence.map!{ |word| 
    if downcase_dictionary.include?(word.downcase)
      word = word
    else
      word = "~" + word + "~"
    end
  }

  return sentence.join(" ")
    
  end
end