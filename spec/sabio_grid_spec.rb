# frozen_string_literal: true

RSpec.describe SabioGrid do
  it "has a version number" do
    expect(SabioGrid::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(SabioGrid.generate).to eq("Grid generated!")
  end
end
