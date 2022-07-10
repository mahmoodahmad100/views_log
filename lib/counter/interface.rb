# frozen_string_literal: true

# this is docs
module Counter
  class Interface
    def initialize(lines)
      @lines = lines
    end

    def start
      raise NotImplementedError
    end

    protected

    attr_reader :lines
  end
end
