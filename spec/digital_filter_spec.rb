require 'digital_filter'

describe "#digital_filter" do
  # [40], 40, 1000                        |       [40] # no change
  it "should return the original sound wave when highest & lowest frequencies are not reached" do
    expect(digital_filter([40], 40, 1000)).to eq [40]
  end
end
