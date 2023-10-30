module KoiosRuby
  module Connection
    attr_reader :last_response

    def get(endpoint, params: nil, headers: default_headers)
      response = http_client.get(endpoint) do |req|
        req.headers = headers
        req.params = params
      end

      @last_response = Response.new(response)
    end

    def post(endpoint, body: nil, params: nil, headers: default_post_headers)
      response = http_client.post(endpoint) do |req|
        req.headers = headers
        req.body = Oj.dump(body, mode: :compat)
        req.params = params
      end

      @last_response = Response.new(response)
    end

    def default_headers
      { 'Accept' => 'application/json'}
    end

    def default_post_headers
      {
        'Content-Type' => 'application/json'
      }.merge(default_headers)
    end

    def http_client
      @http_client ||= Faraday.new(url: KoiosRuby.config.host) do |f|
        f.adapter config.http_adapter
      end
    end
  end
end
