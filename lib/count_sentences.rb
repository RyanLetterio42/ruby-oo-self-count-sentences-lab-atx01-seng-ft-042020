require 'pry'

class String
  require 'pry'
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = ['.', '?', "!"]
    sep = self.split(Regexp.union(delimiters))
    sep.delete("")
    sep.count
  end
end