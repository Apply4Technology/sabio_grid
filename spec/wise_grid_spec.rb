# frozen_string_literal: true

RSpec.describe WiseGrid do
  it "has a version number" do
    expect(WiseGrid::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(WiseGrid.generate).to eq("Grid generated!")
  end
end
