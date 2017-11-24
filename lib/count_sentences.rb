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
    word = 0
    self.split.each do |i|
      if i.sentence? || i.question? || i.exclamation?
        word += 1
      end
    end
    word
  end
end
