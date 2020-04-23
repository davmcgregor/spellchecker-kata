class Spelling
  def check(input)
    if !input.is_a? String
      return "Error input not a string"
    end
    
    dictionary = []
    File.open("dictionary.txt") do |file|
      file.each do |line|
        dictionary << line.strip.downcase
      end
    end

    punctuation = [".", ",", "!", "-", "?", "'"]
    dictionary.push(*punctuation) 

    sentence = input.scan(/(?:\w|['-]\w)+|[[:punct:]]+/)
    
    sentence.map!{ |word| 
    if dictionary.include?(word.downcase)
      word = word
    else
      word = "~" + word + "~"
    end
  }


  return sentence.join(" ").gsub(/\s+\./, '.').gsub(/\s+!/, '!').gsub(/\s+-/, '-')
    
  end
end