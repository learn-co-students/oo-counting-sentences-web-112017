require 'pry'

class String

  def sentence?
    self[self.length-1] == "."? true : false
  end

  def question?
    self[self.length-1] == "?"? true : false
  end

  def exclamation?
    self[self.length-1] == "!"? true : false
  end

  def count_sentences
    self.squeeze('.!?').count('.!?')
  end
end
