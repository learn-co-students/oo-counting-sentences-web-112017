
class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def true_setence?
    if self.sentence? || self.question? || self.exclamation?
      true
    else
      false
    end
  end

  def count_sentences
    return 0 if !self.include?(".")

    @count = 0
    self.split().each do |i|
      if i.true_setence?
        @count += 1
      end
    end
    @count
  end

end
