class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    if text.include?(" ")
      phrase = text.split(" ")
      new_phrase = phrase.map do |word|
        if word.split("")[0].include?("u")
          word + "way"
        elsif word.length == 1 && word.split.include?("I")
          word + "way"
        elsif word.split("")[0].scan(/[aeiouAEIOU]/).length == 1
          word + "way"
        elsif word.split("")[0].scan(/[aeiouAEIOU]/).length == 1
          @first = word.split("").shift
          @new_word = new = word.split("").drop(1).join
          @suffix = @first + "way"
          @new_word + @suffix.downcase
        elsif word.split("")[0..2].join == "Str"
          @first = word.split("")[0..2]
          @new_word = new = word.split("").drop(3).join
          @new_word + @first.join + "ay"
        elsif word.split("")[0..2].join.scan(/[BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]/).length == 3
          @first = word.split("")[0..2]
          @new_word = new = word.split("").drop(3).join
          @new_word + @first.join.downcase + "ay"
        elsif word.split("")[0..1].join.scan(/[BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]/).length == 2
          @first = word.split("")[0..1]
          @new_word = new = word.split("").drop(2).join
          @new_word + @first.join.downcase + "ay"
        elsif word.split("")[0].scan(/[BCDFGHJKLMNPQRSTVWXZabcdefghijklmnopqrstuvwxyz]/).length == 1
          @first = word.split("").shift
          @new_word = new = word.split("").drop(1).join
          @suffix = @first + "ay"
          @new_word + @suffix
        else
          @first = word.split("").shift
          @new_word = new = word.split("").drop(1).join
          @suffix = @first + "ay"
          @new_word + @suffix
        end
      end
      new_phrase.join(" ")
    elsif !text.include?(" ")
      word = text
      if word.split("")[0].include?("u")
        word + "way"
      elsif word.length == 1 && word.split.include?("I")
        word + "way"
      elsif word.split("")[0].scan(/[aeiouAEIOU]/).length == 1
        word + "way"
      elsif word.split("")[0].scan(/[aeiouAEIOU]/).length == 1
        @first = word.split("").shift
        @new_word = new = word.split("").drop(1).join
        @suffix = @first + "way"
        @new_word + @suffix.downcase
      elsif word.split("")[0..2].join.scan(/[BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]/).length == 3
        @first = word.split("")[0..2]
        @new_word = new = word.split("").drop(3).join
        @new_word + @first.join.downcase + "ay"
      elsif word.split("")[0..1].join.scan(/[BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]/).length == 2
        @first = word.split("")[0..1]
        @new_word = new = word.split("").drop(2).join
        @new_word + @first.join.downcase + "ay"
      elsif word.split("")[0].scan(/[BCDFGHJKLMNPQRSTVWXZabcdefghijklmnopqrstuvwxyz]/).length == 1
        @first = word.split("").shift
        @new_word = new = word.split("").drop(1).join
        @suffix = @first + "ay"
        @new_word + @suffix
      else
        @first = word.split("").shift
        @new_word = new = word.split("").drop(1).join
        @suffix = @first + "ay"
        @new_word + @suffix
      end
    end


  end


end
