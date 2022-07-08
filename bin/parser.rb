#!/usr/bin/env ruby
# frozen_string_literal: true

require 'optparse'
require_relative '../config/environment'

options = {}
OptionParser.new do |parser|
  parser.banner = 'Usage: parser.rb [options]'

  parser.on('--views=TYPE','Choose the views type: [ total | unique ], default is total') do |v|
    options[:views] = v
  end
end.parse!

options[:views] ||= 'total'

raise 'views should be total or unique' unless ['total', 'unique'].include? options[:views]
raise 'Views log file is required' unless ARGV[0]