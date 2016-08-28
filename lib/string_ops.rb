module StringOps
  module_function

  def fix_whitespace(in_string:)
    in_string.gsub "\n", " "
  end
end
