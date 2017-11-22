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
    sentence = self.gsub('...','')
    sentence = sentence.gsub('! ','.')
    sentence = sentence.gsub('? ','.')
    count = sentence.split('.').length
    count

  end
end
