# frozen_string_literal: true

require 'bundler'

Bundler.require(:default, ENV.fetch('APP_ENV', 'development'))
