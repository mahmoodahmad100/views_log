# frozen_string_literal: true

require 'bundler'

$ROOT_PATH = File.dirname(__dir__)

$LOAD_PATH.push $ROOT_PATH
Bundler.require(:default, ENV.fetch('APP_ENV', 'development'))

require 'lib/reader'
require 'lib/counter/interface'
require 'lib/counter/total'
require 'lib/counter/unique'
require 'lib/sorter'