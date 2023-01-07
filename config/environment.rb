# frozen_string_literal: true

require 'figaro'
require 'sequel'

module Foodegrient
  # Setup config environment
  class UpdateTopWorker
    # Environment variables setup
    Figaro.application = Figaro::Application.new(
      environment: ENV['WORKER_ENV'] || 'development',
      path: File.expand_path('config/secrets.yml')
    )
    Figaro.load
    def self.config() = Figaro.env
    
    $DB = Sequel.connect((ENV.fetch'DATABASE_URL'))
  end
end
