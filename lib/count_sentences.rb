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
    self.split(/[.!?]\s/).count 
  end

end

# count_sentences - all below work
# self.split(/[.!?]/).reject {|i| i.empty?}.length
# self.split(/[.?!]/).reject(&:empty?).count - refactor of submitted method
# self.split(' ').count { |word| word.sentence? || word.question? || word.exclamation? } - helper methods
# self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
# self.split(/[[!?.]]\s/).count