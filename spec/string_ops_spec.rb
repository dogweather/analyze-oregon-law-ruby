require 'string_ops'
include StringOps

describe StringOps do
  describe '#fix_whitespace' do
    it 'changes newline to a blank' do
      expect( fix_whitespace in_string: "new\nline" ).to eq 'new line'
    end
  end

  describe '#fix_hyphenation' do
    it 'de-hyphenates' do
      expect( fix_hyphenation in_string: 'zip- per' ).to eq 'zipper'
    end
  end
end
