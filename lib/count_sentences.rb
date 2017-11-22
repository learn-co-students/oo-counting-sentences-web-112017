require 'pry'

class String

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
    self.split("!").map {|str| str.split(".")}.flatten.map {|str| str.split("?")}.flatten.length
    # this is ugly and I don't know how to shorten it
  end
end
