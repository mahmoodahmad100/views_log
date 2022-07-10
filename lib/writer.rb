# frozen_string_literal: true

class Writer
    def initialize(data, type)
        @data = data
        @type = type
    end

    def start
        data.each do |k, v|
            puts "#{k} #{v[:count]} #{type == 'unique' ? 'unique' : ''} #{v[:count] == 1 ? 'visit' : 'visits'}"
        end
    end

    protected

    attr_reader :data, :type
end