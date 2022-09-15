# frozen_string_literal: true

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.setup

# Grid views for Rails.
module SabioGrid
  class Error < StandardError; end

  module WiceGridExtentionToActiveRecordColumn #:nodoc:
    # reference to the ActiveRecord model class
    attr_accessor :model
  end

  def self.generate
    Grid.new.generate
  end
end