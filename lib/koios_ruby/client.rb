require 'ostruct'
require 'faraday'

require_relative 'endpoints'
require_relative 'connection'
require_relative 'response'

module KoiosRuby
  class Client
    include KoiosRuby::Endpoints
    include KoiosRuby::Connection

    attr_reader :config

    def initialize(options = {})
      @config = OpenStruct.new(
        KoiosRuby.config.to_h.merge(options)
      )
    end
  end

  class << self
    def config
      @config ||= OpenStruct.new(defaults)
    end

    def defaults
      {
        api_key: nil,
        host: "https://api.koios.rest/api/v0/",
        http_adapter: Faraday.default_adapter
      }
    end

    def configure
      yield(config)
    end

    def new(options = {})
      Client.new(options)
    end
  end
end
