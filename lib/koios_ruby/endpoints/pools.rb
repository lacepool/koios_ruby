module KoiosRuby::Endpoints
  module Pools
    def pool_updates(pool=nil, fields: [], order: nil, headers: nil, options: {})
      params = {"_pool_bech32": pool} if pool
      params.merge!(options) if options.any?
      params.merge!(select: fields.join(",")) if fields.any?
      params.merge!(order: order) if order

      args = {}
      args.merge!(headers: headers) if headers
      args.merge!(params: params) if params.any?

      get "pool_updates", **args
    end
  end
end
