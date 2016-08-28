module StringOps
  module_function

  def clean_up(summary:)
    split_into_sentences(fix_hyphenation(fix_whitespace(summary))).first
  end


  def fix_whitespace(s)
    s.gsub "\n", " "
  end


  def fix_hyphenation(s)
    s.gsub "- ", ""
  end

  def split_into_sentences(s)
    s
      .split(". ")
      .map { |sentence| ensure_ends_with_period(sentence) }
  end

  def ensure_ends_with_period(sentence)
    sentence.end_with?(".") ? sentence : sentence + "."
  end
end
