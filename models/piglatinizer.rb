
class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def pig_latinize
    words = @text.gsub(/[,.\[\]]/,"").split(" ")


    words.collect do |word|
    piggy_words = ''
    if word.match(/^[aeiou]/) || word.length == 1
    latin_word = word + "ay"
    piggy_words << latin_word
    else
        if word[1].match(/^[aeiou]/) ||word.length == 2
        beg_const = word[0]
        word[0] = ''
        latin_word = word + beg_const + "ay"
        piggy_words<< latin_word
        else
          if word[2].match(/^[aeiou]/) || word.length ==3
            beg_const = word[0]
            beg_const << word[1]
            word[0..1] = ''
            latin_word = word + beg_const + "ay"
            piggy_words<< latin_word
          end
        end

    end
  piggy_words


      end

  end
end
