#!/usr/bin/env ruby
# frozen_string_literal: true

require 'optparse'
require_relative '../config/environment'

options = {}
OptionParser.new do |parser|
  parser.banner = 'Usage: parser.rb [options]'

  parser.on('--views=TYPE', 'Choose the views type: [ total | unique ], default is total') do |v|
    options[:views] = v
  end
end.parse!

options[:views] ||= 'total'

raise 'Views should be total or unique' unless %w[total unique].include? options[:views]
raise 'Views log file is required' unless ARGV[0]

lines = Reader.new(ARGV[0]).start
Processor.new(options[:views],
              options[:views] == 'total' ? Counter::Total.new(lines) : Counter::Unique.new(lines)).start
