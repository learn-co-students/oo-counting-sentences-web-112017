require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # self[-1] == "." ? true : false
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end


end
