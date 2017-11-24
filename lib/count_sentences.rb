require 'pry'

class String

  def sentence?
    self.include?(".")
  end

  def question?
  	self.include?("?")
  end

  def exclamation?
  	self.include?("!")
  end

  def count_sentences
 	sentences = []
 	self.split("").each do |char|
 		if char == "!" || char == "?"|| char == "."
 			sentences << char
 		end
 	end
 	sentences.length
end

end