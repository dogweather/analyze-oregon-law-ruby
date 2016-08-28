require 'string_ops'
include StringOps

describe StringOps do
  describe '#fix_whitespace' do
    it 'changes newline to a blank' do
      expect( fix_whitespace "new\nline" ).to eq 'new line'
    end
  end

  describe '#fix_hyphenation' do
    it 'de-hyphenates' do
      expect( fix_hyphenation 'zip- per' ).to eq 'zipper'
    end
  end

  describe '#clean_up' do
    it "handles extra text" do
      input = "Relating to the state transient lodging tax; creating\nnew provisions; amending ORS 284.131 and\n320.305; prescribing an effective date; and pro-\nviding for revenue raising that requires approval\nby a three-fifths majority.\nWhereas Enrolled House Bill 2267 (chapter 818,"
      expect( clean_up summary: input ).to eq "Relating to the state transient lodging tax; creating new provisions; amending ORS 284.131 and 320.305; prescribing an effective date; and providing for revenue raising that requires approval by a three-fifths majority."
    end
  end

end
