
class PigLatinizer

  attr_reader :text

  # def initialize(text)
  #   @text = text.downcase
  # end

  def piglatinize(text)

    words = text.gsub(/[,.\[\]]/,"").split(" ")

    words.collect do |word|

    if word.match(/^[aeiouAEIOU]/) || word.length == 1
    latin_word = word + "way"

    else
        if word[1].match(/^[aeiou]/) ||word.length == 2
        beg_const = word[0]
        word[0] = ''
        latin_word = word + beg_const + "ay"
        else
          if word[2].match(/^[aeiou]/) || word.length ==3
            beg_const = word[0..1]
            # beg_const << word[1]
            word[0..1] = ''
            latin_word = word + beg_const + "ay"
          else
            if word[3].match(/^[aeiou]/) || word.length ==4
              beg_const = word[0..2]
              word[0..2] = ''
              latin_word = word + beg_const + "ay"
            end
          end
        end
      end
    end.join(" ")
  end


end
