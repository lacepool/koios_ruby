require 'oj'
require 'koios_ruby/error'

module KoiosRuby
  class Response
    attr_reader :original_response
    alias_method :original, :original_response

    def initialize(response)
      @original_response = response
    end

    def parsed
      @parsed = Oj.load(@original_response.body) || {}
    end

    # Todo: Error handling
    # def error?
    #   @original_response.status
    # end
  end
end
