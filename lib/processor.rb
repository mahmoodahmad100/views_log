# frozen_string_literal: true

class Processor
  def initialize(views_type, counter)
    @views_type = views_type
    @counter = counter
  end

  def start
    counted_data = counter.start()
    sorted_data = Sorter.new(counted_data).start()
    writer = Writer.new(sorted_data, views_type).start()
  end

  protected

  attr_reader :views_type, :counter
  
end