# frozen_string_literal: true

RSpec.describe WiceGrid do
  it "has a version number" do
    expect(WiceGrid::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(WiceGrid.generate).to eq("Grid generated!")
  end
end
