require 'digital_filter'

describe "#digital_filter" do
  # [40], 40, 1000                        |       [40] # no change
  it "should return the original sound wave when highest & lowest frequencies are not reached, with single sound_wave" do
    expect(digital_filter([40], 40, 1000)).to eq [40]
  end

  it "should return the original sound wave when highest & lowest frequencies are not reached, a longer sound_wave" do
    expect(digital_filter([40, 100, 1000], 40, 1000)).to eq [40, 100, 1000]
  end

end
