def echo(hello)
  hello
end

def shout(word1)
word1.upcase
end



def repeat(word2, i=2)
  word2 + (" #{word2}" * (i-1))
end

def start_of_word(word, num)
  word.slice(0, num)
end

def first_word(string)
  string.partition(" ").first
end

def titleize(sentence)
  stop_words = ["a", "an", "and", "the", "or", "over", "for", "of", "nor"]
  sentence.split.each_with_index.map{|word, index| stop_words.include?(word) && index>0 ? word: word.capitalize}.join(" ")
end
