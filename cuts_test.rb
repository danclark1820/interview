require_relative 'cuts.rb'

describe "cuts" do
  it "returns the maximum number of pieces given k cuts" do
    expect(cuts(2)).to eq 1
    expect(cuts(3)).to eq 2
    expect(cuts(4)).to eq 4
    expect(cuts(5)).to eq 6
    expect(cuts(6)).to eq 9
    expect(cuts(7)).to eq 12
    expect(cuts(8)).to eq 16
  end
end
