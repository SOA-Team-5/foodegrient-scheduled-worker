# frozen_string_literal: true

require_relative '../../init.rb'
require 'aws-sdk-sqs'

module Foodegrient
  # Scheduled worker to report on recent cloning operations
  class UpdateTopWorker
    def initialize
      @config = UpdateTopWorker.config
      # @queue = Foodegrient::Messaging::Queue.new(
      #   @config.REPORT_QUEUE_URL, @config
      # )
    end

    def call
      puts "REPORT DateTime: #{Time.now}"
      DBContent::TopMapper.new().update()
    end
  end
end
