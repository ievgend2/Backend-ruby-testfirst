ARTICLES = %w[a an the]
CONJUNCTIONS = %w[but and nor for so or yet ]
PREPOSITIONS = %w[to  under on in from over of]

class Book
  attr_accessor :title
  def initialize(title = '')
    @title = title
  end

  def capitalize?(word)
    if ARTICLES.include? word
      return false
    end
    if  CONJUNCTIONS.include? word
      return false
    end
    if  PREPOSITIONS.include? word
      return false
    end
    return true
  end

  def title
    arr = @title.split
    arr[0].capitalize!
    arr.each do |word|
      if capitalize?(word) == true
        word.capitalize!
      end
    end
    arr.join(" ")
  end
end
