# frozen_string_literal: true

class Reader
    def initialize(file)
        @file = file
    end

    def start
        validate_file_existence(file)

        File.readlines file
    end

    protected

    attr_reader :file

    def validate_file_existence(file)
        raise 'The file provided dosn\'t exist.' unless File.exist?(file)
    end
end