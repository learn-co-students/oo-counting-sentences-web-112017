require 'pry'

class String


  def sentence?
    last_char == '.'
  end

  def question?
    last_char == '?'
  end

  def exclamation?
    last_char == '!'
  end

  def count_sentences
  a = self.split(/[.?!]/)
  a.delete('')
  a.count
  end

private
  def last_char
    self[self.length-1]
  end

end
