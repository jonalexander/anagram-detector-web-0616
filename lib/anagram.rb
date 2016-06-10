class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)    #listen.match([....])
    initial_word = @word.split("").sort  #listen => ["l", "i", "s", "t", "e", "n"] 

    array.each_with_object([]) do |word_to_compare, matches|
      matches << word_to_compare if initial_word == word_to_compare.split("").sort
    end
  end
  # => return all matches in an array or empty array
end


#break word into array of chars .split("")
#iterate over each word in array (for match method)
# => break word into array of chars .split("")

