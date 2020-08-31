# frozen_string_literal: true

class FileLoader
  def initialize(filepath)
    @filepath = filepath
  end

  def call
    File.foreach(filepath).map(&:split)
  end

  private

  attr_reader :filepath
end
