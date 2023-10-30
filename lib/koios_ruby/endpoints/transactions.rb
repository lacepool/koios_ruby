module KoiosRuby::Endpoints
  module Transactions
    def transactions(txs=[], fields: [], order: nil, headers: nil, options: {})
      txs = txs.split(",") if txs.is_a?(String)

      params = {}
      params.merge!(options) if options.any?
      params.merge!(select: fields.join(",")) if fields.any?
      params.merge!(order: order) if order

      args = { body: {"_tx_hashes": txs} }
      args.merge!(headers: headers) if headers
      args.merge!(params: params) if params.any?

      post "tx_info", **args
    end
  end
end
