# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative "fxapi/version"
require_relative 'fxapi/endpoints'
require_relative 'fxapi/configuration'

module Fxapi
  BASE_URL = 'https://api.fxapi.com/v1/'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Fxapi::Configuration.new
    yield(configuration)
  end
end
