# frozen_string_literal: true

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.setup

# Grid views for Rails.
module WiceGrid
  class Error < StandardError; end

  def self.generate
    Grid.new.generate
  end
end
