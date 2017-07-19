class PigLatinizer

  def to_pig_latin(sent) #takes a phrase
    sent.split.collect {|w| self.piglatinize(w)}.join(" ")
  end

  def piglatinize(sent) #takes one word
    vowels = ["a","e", "i", "o", "u"]
    sent = sent.chars
    if vowels.include? sent[0].downcase
      sent << "way"
    else
      while ! vowels.include? sent[0].downcase
        sent << sent[0]
        sent.shift
      end
      sent << "ay"
    end.join
  end



end
