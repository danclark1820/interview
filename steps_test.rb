require_relative 'steps.rb'

describe 'steps' do
  it "returns the steps of a word with an odd number of letters" do
    expect(steps("abb")).to eq 1
  end

  it "returns steps for even number of letters" do
    expect(steps("abba")).to eq 0
  end

  it "returns the number of steps" do
    expect(steps("feazhaxpux")).to eq 58
  end
end
