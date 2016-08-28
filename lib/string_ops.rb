module StringOps
  module_function

  def clean_up(summary:)
    split_into_sentences(fix_hyphenation(fix_whitespace(summary))).first
  end


  def fix_whitespace(a_string)
    a_string.gsub "\n", " "
  end


  def fix_hyphenation(a_string)
    a_string.gsub "- ", ""
  end


  def split_into_sentences(a_string)
    a_string
      .split(". ")
      .map { |sentence| ensure_ends_with_period(sentence) }
  end


  def ensure_ends_with_period(sentence)
    sentence + (sentence.end_with?(".") ? "" : ".")
  end
end
