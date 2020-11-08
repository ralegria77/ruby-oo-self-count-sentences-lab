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
    self.split(/[.!?]/).reject {|i| i.empty?}.length
  end

end

# count_sentences - all below work
# self.split(/[.?!]/).reject(&:empty?).count
# self.split(' ').count { |word| word.sentence? || word.question? || word.exclamation? }
# self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size